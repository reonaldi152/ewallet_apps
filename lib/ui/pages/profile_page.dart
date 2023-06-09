import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/pages/profile_edit_page.dart';
import 'package:ewallet_apps/ui/pages/profile_edit_pin_page.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:ewallet_apps/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Saya',
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            showCustomSnackbar(context, state.e);
          }

          if (state is AuthInitial) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
          }
        },
        builder: (context, state) {
          if (state is AuthSuccess) {
            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 22,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: state.data.profilePicture == null
                                ? const AssetImage(
                                    'assets/img_profile.png',
                                  )
                                : NetworkImage(state.data.profilePicture!)
                                    as ImageProvider,
                          ),
                        ),
                        child: state.data.emailVerifiedAt == null
                            ? Container()
                            : Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: whiteColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.check_circle,
                                      color: greenColor,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        state.data.username.toString(),
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ProfileMenuItem(
                        iconUrl: 'assets/ic_edit_profile.png',
                        title: 'Edit Profil',
                        onTap: () async {
                          if (await Navigator.pushNamed(context, '/pin') ==
                              true) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileEditPage(
                                  user: state.data,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      ProfileMenuItem(
                        iconUrl: 'assets/ic_pin.png',
                        title: 'Pin Saya',
                        onTap: () async {
                          if (await Navigator.pushNamed(context, '/pin') ==
                              true) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileEditPinPage(
                                  user: state.data,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      // ProfileMenuItem(
                      //   iconUrl: 'assets/ic_wallet.png',
                      //   title: 'Wallet Settings',
                      //   onTap: () {},
                      // ),
                      // ProfileMenuItem(
                      //   iconUrl: 'assets/ic_reward.png',
                      //   title: 'My Rewards',
                      //   onTap: () {},
                      // ),
                      // ProfileMenuItem(
                      //   iconUrl: 'assets/ic_help.png',
                      //   title: 'Help Center',
                      //   onTap: () {},
                      // ),
                      ProfileMenuItem(
                        iconUrl: 'assets/ic_logout.png',
                        title: 'Log Out',
                        onTap: () {
                          context.read<AuthBloc>().add(AuthLogout());
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 87,
                ),
                // CustomTextButton(
                //   title: 'Report a Problem',
                //   onPressed: () {},
                // ),
                const SizedBox(
                  height: 50,
                ),
              ],
            );
          }

          return Container();
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
      //       padding: const EdgeInsets.symmetric(
      //         horizontal: 30,
      //         vertical: 22,
      //       ),
      //       decoration: BoxDecoration(
      //         color: whiteColor,
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: Column(
      //         children: [
      //           Container(
      //             width: 120,
      //             height: 120,
      //             decoration: const BoxDecoration(
      //               shape: BoxShape.circle,
      //               image: DecorationImage(
      //                 image: AssetImage(
      //                   'assets/img_profile.png',
      //                 ),
      //               ),
      //             ),
      //             child: Align(
      //               alignment: Alignment.topRight,
      //               child: Container(
      //                 width: 28,
      //                 height: 28,
      //                 decoration: BoxDecoration(
      //                   shape: BoxShape.circle,
      //                   color: whiteColor,
      //                 ),
      //                 child: Center(
      //                   child: Icon(
      //                     Icons.check_circle,
      //                     color: greenColor,
      //                     size: 24,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 16,
      //           ),
      //           Text(
      //             'Shayna Hanna',
      //             style: blackTextStyle.copyWith(
      //               fontSize: 18,
      //               fontWeight: medium,
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 40,
      //           ),
      //           ProfileMenuItem(
      //             iconUrl: 'assets/ic_edit_profile.png',
      //             title: 'Edit Profile',
      //             onTap: () async {
      //               if (await Navigator.pushNamed(context, '/pin') == true) {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => ProfileEditPage(),
      //                   ),
      //                 );
      //               }
      //             },
      //           ),
      //           ProfileMenuItem(
      //             iconUrl: 'assets/ic_pin.png',
      //             title: 'My Pin',
      //             onTap: () async {
      //               if (await Navigator.pushNamed(context, '/pin') == true) {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => ProfileEditPinPage(),
      //                   ),
      //                 );
      //               }
      //             },
      //           ),
      //           ProfileMenuItem(
      //             iconUrl: 'assets/ic_wallet.png',
      //             title: 'Wallet Settings',
      //             onTap: () {},
      //           ),
      //           ProfileMenuItem(
      //             iconUrl: 'assets/ic_reward.png',
      //             title: 'My Rewards',
      //             onTap: () {},
      //           ),
      //           ProfileMenuItem(
      //             iconUrl: 'assets/ic_help.png',
      //             title: 'Help Center',
      //             onTap: () {},
      //           ),
      //           ProfileMenuItem(
      //             iconUrl: 'assets/ic_logout.png',
      //             title: 'Log Out',
      //             onTap: () {},
      //           ),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 87,
      //     ),
      //     CustomTextButton(
      //       title: 'Report a Problem',
      //       onPressed: () {},
      //     ),
      //     const SizedBox(
      //       height: 50,
      //     ),
      //   ],
      // ),
    );
  }
}
