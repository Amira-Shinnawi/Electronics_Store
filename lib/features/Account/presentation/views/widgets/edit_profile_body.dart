import 'package:electronics_store/constants.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/features/Home/presentation/views/widgets/logo.dart';
import 'package:electronics_store/features/Home/presentation/views/widgets/profile_image.dart';
import 'package:flutter/material.dart';

import 'edit_profile_form.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Logo(),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Edit Profile',
                  style: Styles.textStyle32KItim.copyWith(
                    fontSize: 40,
                    color: kBlueColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Stack(
                children: [
                  const ProfileImage(
                    width: 180,
                    height: 202,
                  ),
                  Positioned(
                    top: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Amira Shinnawi',
                style: Styles.textStyle24Inter.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              const EditProfileForm(
                hintName: 'First Name',
              ),
              const EditProfileForm(
                hintName: 'Last Name',
              ),
              const EditProfileForm(
                hintName: 'Email',
              ),
              const EditProfileForm(
                hintName: 'Phone Number',
              ),
              const EditProfileForm(
                hintName: 'Password',
              ),
              const SizedBox(
                height: 46,
              ),
              Container(
                width: 215,
                height: 42,
                decoration: ShapeDecoration(
                  color: kBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Update',
                    style: Styles.textStyle24Inter.copyWith(
                      color: kButtonColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
