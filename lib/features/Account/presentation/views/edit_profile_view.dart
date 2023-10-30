import 'package:electronics_store/constants.dart';
import 'package:electronics_store/features/Account/presentation/views/widgets/edit_profile_body.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPadding,
          child: EditProfileBody(),
        ),
      ),
    );
  }
}
