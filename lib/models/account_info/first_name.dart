// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class firstName extends StatelessWidget {
  TextEditingController controller1;
  firstName({
    Key? key,
    required this.controller1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller1,
      onSaved: (value) {
        controller1.text = value!;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return null;
        } else if (RegExp(r'^[\u0621-\u064A ]+$').hasMatch(value) &&
            value.length >= 2) {
          return null;
        } else if (RegExp(r'^[a-zA-Z]+$').hasMatch(value) &&
            value.length >= 2) {
          return null;
        } else {
          return 'غير مناسب';
        }
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        labelText: 'الاسم',
        hintText: 'خالد كشميري',
        prefixIcon: Icon(
          Icons.person_outline,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
