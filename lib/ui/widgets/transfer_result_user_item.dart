// import 'package:ewallet_apps/models/user_model.dart';
import 'package:ewallet_apps/models/user_model.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferResultUserItem extends StatelessWidget {
  final UserModel user;
  final bool isSelected;
  // final String imageUrl;
  // final String name;
  // final String username;
  // final bool isVerified;

  const TransferResultUserItem({
    Key? key,
    required this.user,
    this.isSelected = false,
    // required this.imageUrl,
    // required this.name,
    // required this.username,
    // this.isVerified = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 175,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:
                    user.profilePicture == null || user.profilePicture!.isEmpty
                        ? const AssetImage('assets/img_profile.png')
                        : NetworkImage(
                            user.profilePicture!,
                          ) as ImageProvider,
                // image: AssetImage(imageUrl),
              ),
            ),
            child: user.verified == 1
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 14,
                        ),
                      ),
                    ),
                  )
                : null,
          ),
          // child: isVerified
          //     ? Align(
          //         alignment: Alignment.topRight,
          //         child: Container(
          //           width: 16,
          //           height: 16,
          //           decoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             color: whiteColor,
          //           ),
          //           child: Center(
          //             child: Icon(
          //               Icons.check_circle,
          //               color: greenColor,
          //               size: 14,
          //             ),
          //           ),
          //         ),
          //       )
          //     : null),
          const SizedBox(
            height: 13,
          ),
          Text(
            user.name.toString(),
            // name,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            '@${user.username}',
            // username,
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
