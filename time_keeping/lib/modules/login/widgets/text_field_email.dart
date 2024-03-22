import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TextFieldEmailWidget extends StatelessWidget {
  TextFieldEmailWidget({super.key, required this.hintText, required this.text});
  String text;
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
          ),
        ),
        SizedBox(height: 5.sp),
        TextFormField(
          cursorHeight: 12.sp,
          cursorColor: Colors.white,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFFDCF7F9),
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(2.sp),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFFDCF7F9)),
            prefixIcon: Icon(
              Icons.person_pin,
              color: Color(0xFFDCF7F9),
            ),
          ),
        ),
      ],
    );
  }
}
