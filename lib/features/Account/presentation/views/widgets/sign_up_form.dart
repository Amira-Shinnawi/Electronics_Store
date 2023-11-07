import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:electronics_store/constants.dart';
import 'package:electronics_store/core/utils/api_server.dart';
import 'package:electronics_store/core/utils/app_router.dart';
import 'package:electronics_store/core/utils/assets_data.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/core/widgets/custom_button.dart';
import 'package:electronics_store/features/Account/data/user_controller.dart';
import 'package:electronics_store/features/Account/presentation/views/widgets/password_text_felid.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_text_felid.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController fireNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final UserController _userController = UserController();
  bool obscureText = true;
  bool isLoading = false;

  signUp() async {
    isLoading = true;
    setState(() {});
    var response = await _userController.postRequest(linkSignUp, {
      'firstName': fireNameController.text,
      'lastName': lastNameController.text,
      'password': passwordController.text,
      'phoneNumber': phoneNumController.text,
      'emailAddress': emailController.text,
    });
    isLoading = false;
    setState(() {});
    if (response['status'] == 'success') {
      GoRouter.of(context).push(AppRouter.kMainView);
    } else {
      AwesomeDialog(
        context: context,
        body: Text(
          '${response['message']}',
          style: Styles.textStyle32KItim.copyWith(
            fontSize: 18,
            color: kBlueColor,
          ),
        ),
      )..show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading == true
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Form(
            key: formState,
            child: Column(
              children: [
                CustomTextFelid(
                  controller: fireNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'First Name is Required';
                    }
                    return null;
                  },
                  hinText: 'Enter First Name',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFelid(
                  controller: lastNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Last Name is Required';
                    }
                    return null;
                  },
                  hinText: 'Enter Last Name',
                ),
                const SizedBox(
                  height: 20,
                ),
                PasswordTextFelid(
                  controller: passwordController,
                  obscureText: obscureText,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFelid(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone Number is Required';
                    }
                    return null;
                  },
                  controller: phoneNumController,
                  hinText: 'Enter Phone Number',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFelid(
                  controller: emailController,
                  hinText: 'Enter Your Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  buttonName: 'Sign UP',
                  style: Styles.textStyle24Inter.copyWith(
                    color: kPrimaryColor,
                    fontSize: 20,
                  ),
                  width: 130,
                  height: 50,
                  backgroundColor: kBlueColor,
                  onPressed: () async {
                    if (formState.currentState!.validate()) {
                      await signUp();
                      GoRouter.of(context).push(
                        AppRouter.kEditProfile,
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'OR',
                  style: Styles.textStyle32KItim.copyWith(
                    fontSize: 36,
                    color: kBlueColor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetsData.gmail,
                      width: 33,
                      height: 33,
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Image.asset(
                      AssetsData.facebook,
                      width: 33,
                      height: 33,
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
