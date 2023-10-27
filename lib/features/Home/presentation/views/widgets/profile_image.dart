import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49,
      height: 55,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage(AssetsData.profileImage),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(483),
        ),
      ),
    );
  }
}
