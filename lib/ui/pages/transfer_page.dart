import 'package:ewallet_apps/blocs/user/user_bloc.dart';
import 'package:ewallet_apps/models/transfer_form_model.dart';
import 'package:ewallet_apps/models/user_model.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/pages/transfer_amount_page.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:ewallet_apps/ui/widgets/forms.dart';
import 'package:ewallet_apps/ui/widgets/transfer_recent_user_item.dart';
import 'package:ewallet_apps/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/bloc/transaction_bloc.dart';
import '../widgets/home_latest_transaction_item.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final usernameController = TextEditingController(text: '');
  UserModel? selectedUser;

  late UserBloc userBloc;

  @override
  void initState() {
    super.initState();
    userBloc = context.read<UserBloc>()..add(UserGetRecent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: 'by username',
            isShowTitle: false,
            controller: usernameController,
            onFieldSubmitted: (value) {
              if (value.isNotEmpty) {
                userBloc.add(UserGetByUsername(usernameController.text));
              } else {
                selectedUser = null;
                userBloc.add(UserGetRecent());
              }
              setState(() {});
            },
          ),
          // buildRecentUsers(),
          usernameController.text.isEmpty ? buildRecentUsers() : buildResult(),
          const SizedBox(
            height: 80,
          ),
          // if (selectedUser != null)
          //   CustomFilledButton(
          //     title: 'Continue',
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => TransferAmountPage(
          //             data: TransferFormModel(
          //               sendTo: selectedUser?.username,
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),

          const SizedBox(
            height: 50,
          ),
        ],
      ),
      floatingActionButton: selectedUser != null
          ? Container(
              margin: const EdgeInsets.all(24),
              child: CustomFilledButton(
                title: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TransferAmountPage(
                        data: TransferFormModel(
                          sendTo: selectedUser?.username,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          : Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pengguna Terkini',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserSuccess) {
                return Column(
                  children: state.users.map((user) {
                    return GestureDetector(
                      onTap: () {
                        debugPrint("ini username ${selectedUser?.username}");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransferAmountPage(
                              data: TransferFormModel(
                                sendTo: user.username,
                              ),
                            ),
                          ),
                        );
                      },
                      child: TransferRecentUserItem(user: user),
                    );
                  }).toList(),
                );
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),

          // const TransferRecentUserItem(
          //   imageUrl: 'assets/img_friend1.png',
          //   name: 'Yoona Jie',
          //   username: "@yonna",
          //   isVerified: true,
          // ),
          // const TransferRecentUserItem(
          //   imageUrl: 'assets/img_friend2.png',
          //   name: 'John',
          //   username: "@john",
          //   isVerified: false,
          // ),
          // const TransferRecentUserItem(
          //   imageUrl: 'assets/img_friend3.png',
          //   name: 'Yoshi',
          //   username: "@yoshi",
          //   isVerified: false,
          // ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserSuccess) {
                return Wrap(
                  spacing: 17,
                  runSpacing: 17,
                  children: state.users.map((user) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedUser = user;
                        });
                      },
                      child: TransferResultUserItem(
                        user: user,
                        isSelected: user.id == selectedUser?.id,
                      ),
                    );
                  }).toList(),
                );
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          // Wrap(
          //   spacing: 17,
          //   runSpacing: 17,
          //   children: const [
          //     TransferResultUserItem(
          //       imageUrl: 'assest/img_friend1.png',
          //       name: 'yoona',
          //       username: '@yoona',
          //       isVerified: true,
          //     ),
          //     TransferResultUserItem(
          //       imageUrl: 'assest/img_friend2.png',
          //       name: 'yoosi',
          //       username: '@yoosi',
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
