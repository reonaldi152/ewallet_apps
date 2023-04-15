import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/models/user_edit_form_model.dart';
import 'package:ewallet_apps/models/user_model.dart';
import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:ewallet_apps/ui/widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileEditPage extends StatefulWidget {
  final UserModel user;

  const ProfileEditPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final usernameController = TextEditingController(text: '');
  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    final authState = context.read<AuthBloc>().state;
    if (authState is AuthSuccess) {
      // usernameController.text = authState.user.username;
      // nameController.text = authState.user.name!;
      // emailController.text = authState.user.email!;
      // passwordController.text = authState.user.password!;

      usernameController.text = widget.user.username!;
      nameController.text = widget.user.name!;
      emailController.text = widget.user.email!;
      passwordController.text = widget.user.password!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/profile-edit-success', (route) => false);
          }

          if (state is AuthFailed) {
            showCustomSnackbar(context, state.e);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            children: [
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFormField(
                      title: 'Username',
                      controller: usernameController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      title: 'Full Name',
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      title: 'Email Address',
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      title: 'Password',
                      obscureText: true,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomFilledButton(
                      title: 'Update Now',
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              AuthUpdateUser(
                                widget.user,
                                UserEditFormModel(
                                  email: emailController.text,
                                  name: nameController.text,
                                  username: usernameController.text,
                                  password: passwordController.text,
                                ),
                              ),
                            );
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      // body: ListView(
      //   padding: const EdgeInsets.symmetric(
      //     horizontal: 24,
      //   ),
      //   children: [
      //     const SizedBox(
      //       height: 30,
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(22),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(20),
      //         color: whiteColor,
      //       ),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           CustomFormField(
      //             title: 'Username',
      //             controller: usernameController,
      //           ),
      //           const SizedBox(
      //             height: 16,
      //           ),
      //           CustomFormField(
      //             title: 'Full Name',
      //             controller: nameController,
      //           ),
      //           const SizedBox(
      //             height: 16,
      //           ),
      //           CustomFormField(
      //             title: 'Email Address',
      //             controller: emailController,
      //           ),
      //           const SizedBox(
      //             height: 16,
      //           ),
      //           CustomFormField(
      //             title: 'Password',
      //             obscureText: true,
      //             controller: passwordController,
      //           ),
      //           const SizedBox(
      //             height: 30,
      //           ),
      //           CustomFilledButton(
      //             title: 'Update Now',
      //             onPressed: () {
      //               Navigator.pushNamedAndRemoveUntil(
      //                   context, '/profile-edit-success', (route) => false);
      //             },
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}