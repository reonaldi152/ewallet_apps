import 'dart:convert';
import 'dart:io';
import 'package:ewallet_apps/models/sign_up_form_model.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/pages/sign_up_success_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/ui/pages/sign_up_set_ktp_page.dart';
// import 'package:ewallet_apps/ui/pages/sign_up_set_ktp_page.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:ewallet_apps/ui/widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignUpSetProfilePage extends StatefulWidget {
  final SignUpFormModel data;

  const SignUpSetProfilePage({
    Key? key,
    this.name,
    required this.data,
  }) : super(key: key);

  final dynamic name;

  @override
  State<SignUpSetProfilePage> createState() => _SignUpSetProfilePageState();
}

class _SignUpSetProfilePageState extends State<SignUpSetProfilePage> {
  final pinController = TextEditingController(text: '');
  XFile? selectedImage;

  selectImage() async {
    final imagePicker = ImagePicker();
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.data.toJson());
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          // Container(
          //   width: 155,
          //   height: 50,
          //   margin: const EdgeInsets.only(
          //     top: 100,
          //     bottom: 100,
          //   ),
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //         'assets/img_logo_light.png',
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(height: 160),
          Text(
            'Ayo bergabung\nbersama kami',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    selectImage();
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightBackgroundColor,
                      image: selectedImage == null
                          ? null
                          : DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(
                                File(
                                  selectedImage!.path,
                                ),
                              ),
                            ),
                    ),
                    child: selectedImage != null
                        ? null
                        : Center(
                            child: Image.asset(
                              'assets/ic_upload.png',
                              width: 32,
                            ),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.name.toString(),
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFormField(
                  title: 'Atur PIN (6 angka)',
                  obscureText: true,
                  controller: pinController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Lanjut',
                  onPressed: () {
                    if (pinController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Field PIN harus diisi',
                          ),
                          backgroundColor: redColor,
                        ),
                      );
                    } else {
                      // context.read<AuthBloc>().add(
                      //       AuthRegister(widget.data),
                      //     );
                      // Navigator.pushNamed(context, '/sign-up-success');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpSuccessPage(
                            data: widget.data.copyWith(
                              profilePicture: selectedImage == null
                                  ? null
                                  : 'data:image/png;base64,' +
                                      base64Encode(File(selectedImage!.path)
                                          .readAsBytesSync()),
                              pin: pinController.text,
                            ),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
