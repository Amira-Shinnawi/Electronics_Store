import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:electronics_store/constants.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/features/Home/presentation/views/widgets/logo.dart';
import 'package:electronics_store/features/Home/presentation/views/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'edit_profile_form.dart';

class EditProfileBody extends StatefulWidget {
  const EditProfileBody({Key? key}) : super(key: key);

  @override
  _EditProfileBodyState createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends State<EditProfileBody> {
  XFile? _pickedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _pickedImage = pickedImage;
      });
    }
  }

  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController fireNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: formState,
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
                    if (_pickedImage != null)
                      CircleAvatar(
                        radius: 90,
                        child: Container(
                          width: 180,
                          height: 202,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: FileImage(File(_pickedImage!.path)),
                              fit: BoxFit.cover,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(483)),
                            ),
                          ),
                        ),
                      )
                    else
                      const ProfileImage(width: 180, height: 202),
                    Positioned(
                      bottom: -10,
                      left: 0,
                      child: IconButton(
                        onPressed: () {
                          _pickImage();
                        },
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
                EditProfileForm(
                  controller: fireNameController,
                  hintName: 'First Name',
                ),
                EditProfileForm(
                  controller: lastNameController,
                  hintName: 'Last Name',
                ),
                EditProfileForm(
                  controller: emailController,
                  hintName: 'Email',
                ),
                EditProfileForm(
                  controller: phoneNumController,
                  hintName: 'Phone Number',
                ),
                EditProfileForm(
                  controller: passwordController,
                  hintName: 'Password',
                ),
                const SizedBox(
                  height: 46,
                ),
                GestureDetector(
                  onTap: () {
                    // ignore: avoid_single_cascade_in_expression_statements
                    AwesomeDialog(
                      context: context,
                      animType: AnimType.scale,
                      dialogType: DialogType.success,
                      
                      body: const Center(
                        child: Text(
                          'Updated Account Successfully',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      btnOkOnPress: () {},
                    )..show();
                  },
                  child: Container(
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
