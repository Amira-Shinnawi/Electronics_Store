import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({
    super.key,
    required this.hintName,required this.controller,
  });
  final String hintName;
  final  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              hintName,
              style: Styles.textStyle24Inter.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           Expanded(
            child: SizedBox(
              height: 40,
              child: TextFormField(
                controller:controller ,
                decoration:const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFFEEEEEE),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
