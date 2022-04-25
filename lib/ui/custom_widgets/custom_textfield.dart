

import 'package:flutter/material.dart';
import 'package:pregnany_tracker/core/constants/style.dart';

import '../../core/constants/colors.dart';
class CustomTextField extends StatelessWidget {

  final onChanged;
  final validator;
  final hintText;
  final controller;
  final preFixIcon;
  final sufFixIcon;
  final textInputAction;
  final keyBoardType;
  CustomTextField({Key? key,
    this.preFixIcon,
    this.sufFixIcon,
    this.onChanged,
    this.controller,
    this.hintText,
    this.validator,
    this.textInputAction,
    this.keyBoardType,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      keyboardType: keyBoardType,
      decoration:  InputDecoration(

        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        contentPadding:  EdgeInsets.symmetric(vertical: 10.0),
        hintText:hintText,
        hintStyle: hintTextStyl,
        fillColor: greyColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: greyColor, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        enabledBorder:OutlineInputBorder(
            borderSide:  BorderSide(color: greyColor, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ) ,
        prefixIcon: preFixIcon,
        disabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: greyColor, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      ),

    );
  }
}
