import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import '../../models/sign_up_form_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpSuccessPage extends StatefulWidget {
  final SignUpFormModel data;
  const SignUpSuccessPage({Key? key, required this.data}) : super(key: key);

  @override
  State<SignUpSuccessPage> createState() => _SignUpSuccessPageState();
}

class _SignUpSuccessPageState extends State<SignUpSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Grow your finance start\ntogether with us',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 183,
              title: 'Get Started',
              onPressed: () {
                context.read<AuthBloc>().add(
                      AuthRegister(widget.data),
                    );
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
