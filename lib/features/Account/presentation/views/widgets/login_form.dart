import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:electronics_store/core/utils/api_server.dart';
import 'package:electronics_store/core/utils/app_router.dart';
import 'package:electronics_store/features/Account/presentation/views/widgets/password_text_felid.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_felid.dart';
import '../../../data/manager/user_controller.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool obscureText = true;
  GlobalKey<FormState> formState = GlobalKey();

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  UserController _userController = UserController();
  bool isLoading = false;
  login() async {
    if (formState.currentState!.validate()) {
      isLoading = true;
      setState(() {});
      var response = await _userController.postRequest(linkLogin, {
        'emailAddress': emailController.text,
        'password': passwordController.text,
      });
      isLoading = false;
      setState(() {});
      if (response['status'] == 'success') {
        GoRouter.of(context).push(AppRouter.kMainView);
      } else {
        AwesomeDialog(
          context: context,
          body: Text('${response['message']}'),
        )..show();
      }
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Your Email';
                    }
                    return null;
                  },
                  controller: emailController,
                  hinText: 'Enter Your Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                PasswordTextFelid(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Your Password';
                    }
                    return null;
                  },
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
                CustomButton(
                  buttonName: 'Log In',
                  style: Styles.textStyle24.copyWith(
                    color: kPrimaryColor,
                    fontSize: 20,
                  ),
                  width: 130,
                  height: 50,
                  backgroundColor: kBlueColor,
                  onPressed: () async {
                    await login();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'OR',
                  style: Styles.textStyle32.copyWith(
                    fontSize: 36,
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
                )
              ],
            ),
          );
  }
}
