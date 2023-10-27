import 'package:electronics_store/features/Home/presentation/views/widgets/logo.dart';
import 'package:electronics_store/features/Home/presentation/views/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Logo(),
        Spacer(),
        ProfileImage(),
      ],
    );
  }
}
