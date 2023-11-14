import 'package:electronics_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_data.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.width,
    required this.height,
  });
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kEditProfile);
      },
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(AssetsData.profileImage),
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(483),
          ),
        ),
      ),
    );
  }
}
