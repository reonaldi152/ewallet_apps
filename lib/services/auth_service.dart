import 'dart:convert';

import 'package:ewallet_apps/models/sign_in_form_model.dart';
import 'package:ewallet_apps/models/sign_up_form_model.dart';
import 'package:ewallet_apps/models/user_edit_form_model.dart';
import 'package:ewallet_apps/models/user_model.dart';
import 'package:ewallet_apps/shared/shared_values.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<bool> checkEmail(String email) async {
    try {
      final res = await http.post(
        Uri.parse(
          '$baseUrl/is-email-exist',
        ),
        body: {
          'email': email,
        },
      );

      if (res.statusCode == 200) {
        return jsonDecode(res.body)['is_email_exist'];
      } else {
        return jsonDecode(res.body)['errors'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> register(SignUpFormModel data) async {
    print("ini register");
    try {
      print("masuk try register");
      print(data.toJson());
      final res = await http.post(
        Uri.parse(
          '$baseUrl/register',
        ),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(data.toJson()),
        // body: json.encode({
        //   'name': 'mamang',
        //   'email': 'mamang@gmail.com',
        //   'password': 'mamang123',
        //   'pin': '123456'
        //   'profile_picture': null,
        //   'ktp': null
        // }),
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        print("masuk code 200/201");
        final user = UserModel.fromJson(jsonDecode(res.body));
        user.password = data.password;

        print("ini user register : $user");
        await storeCredentialToLocal(user);
        print("registerrr");
        return user;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<UserModel> login(SignInFormModel data) async {
    print("ini login");
    try {
      print("masuk try login");
      final res = await http.post(
        Uri.parse(
          '$baseUrl/login',
        ),
        body: data.toJson(),
      );

      print(res.body);

      if (res.statusCode == 200 || res.statusCode == 201) {
        print("masuk login 200");
        final user = UserModel.fromJson(jsonDecode(res.body));
        user.password = data.password;
        print("ini user $user");

        await storeCredentialToLocal(user);

        return user;
      } else {
        throw jsonDecode(res.body)['message'] as String;
      }
    } catch (e) {
      print("ini error login $e");
      rethrow;
    }
  }

  Future<void> updateUser(UserEditFormModel data) async {
    try {
      print(data.toJson());

      final token = await getToken();

      final res = await http.put(
        Uri.parse(
          '$baseUrl/users',
        ),
        body: data.toJson(),
        headers: {
          'Authorization': token,
        },
      );

      print(res.body);

      if (res.statusCode != 200) {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      final token = await getToken();

      final res = await http.post(
        Uri.parse(
          '$baseUrl/logout',
        ),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (res.statusCode != 200) {
        await clearLocalStorage();
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> storeCredentialToLocal(UserModel user) async {
    try {
      const storage = FlutterSecureStorage();
      print("ini user token ${user.token}");
      await storage.write(key: 'token', value: user.token);
      await storage.write(key: 'email', value: user.email);
      await storage.write(key: 'password', value: user.password);
      print(storage.write(key: 'token', value: user.token).toString());
    } catch (e) {
      rethrow;
    }
  }

  Future<String> getToken() async {
    String token = '';

    const storage = FlutterSecureStorage();
    String? value = await storage.read(key: 'token');
    print("ini value token $value");

    if (value != null) {
      token = 'Bearer $value';
    } else {
      token = '123';
    }

    print("ini token ya : $token");

    return token;
  }

  Future<SignInFormModel> getCredentialFromLocal() async {
    try {
      const storage = FlutterSecureStorage();
      Map<String, String> values = await storage.readAll();

      if (values['token'] != null) {
        final SignInFormModel data = SignInFormModel(
          email: values['email'],
          password: values['password'],
        );

        print('get user from local: ${data.toJson()}');

        return data;
      } else {
        throw 'unauthenticated';
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> clearLocalStorage() async {
    try {
      const storage = FlutterSecureStorage();
      await storage.deleteAll();
    } catch (e) {
      rethrow;
    }
  }
}
