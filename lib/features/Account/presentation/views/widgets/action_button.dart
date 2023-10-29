import 'package:electronics_store/constants.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/features/Account/presentation/views/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'login_form.dart';

class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  bool isSignUpSelected = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> signUpFields = [
      const SignUpForm(),
    ];
    List<Widget> logInFields = [
      const LogInForm(),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 20.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  buttonName: 'Sign Up',
                  width: 113,
                  height: 40,
                  style: Styles.textStyle24.copyWith(
                    color: isSignUpSelected ? kPrimaryColor : kBlueColor,
                    fontSize: 20,
                    fontFamily: kInter,
                  ),
                  backgroundColor:
                      isSignUpSelected ? kBlueColor : kPrimaryColor,
                  onPressed: () {
                    setState(() {
                      isSignUpSelected = true;
                    });
                  },
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  ),
                ),
                CustomButton(
                  buttonName: 'Log In',
                  width: 113,
                  height: 40,
                  style: Styles.textStyle24.copyWith(
                    color: isSignUpSelected ? kBlueColor : kPrimaryColor,
                    fontSize: 20,
                    fontFamily: kInter,
                  ),
                  backgroundColor:
                      isSignUpSelected ? kPrimaryColor : kBlueColor,
                  onPressed: () {
                    setState(() {
                      isSignUpSelected = false;
                    });
                  },
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
              ],
            ),
          ),
          if (isSignUpSelected) ...signUpFields,
          if (!isSignUpSelected) ...logInFields
        ],
      ),
    );
  }
}
