import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TextFieldPassWidget extends StatefulWidget {
  TextFieldPassWidget(
      {super.key,
      required this.isVisibility,
      required this.text,
      required this.hintText});
  bool isVisibility;
  String text;
  String hintText;
  @override
  State<TextFieldPassWidget> createState() => _TextFieldPassWidgetState();
}

class _TextFieldPassWidgetState extends State<TextFieldPassWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5.sp),
        TextFormField(
          obscureText: widget.isVisibility,
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
            prefixIcon: Icon(
              Icons.lock_rounded,
              color: Color(0xFFDCF7F9),
            ),
            hintText: widget.hintText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  widget.isVisibility = !widget.isVisibility;
                });
              },
              icon: widget.isVisibility
                  ? Icon(Icons.visibility, color: Colors.black)
                  : Icon(Icons.visibility_off, color: Colors.grey),
            ),
            hintStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFFDCF7F9)),
          ),
        ),
      ],
    );
  }
}
