import 'package:electronics_store/features/Account/presentation/views/widgets/account_view_body.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: AccountViewBody(),
        ),
      ),
    );
  }
}
