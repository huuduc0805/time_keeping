import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key, required this.text, required this.color});
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Container(
            alignment: Alignment.center,
            height: 50.sp,
            width: 325.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2.sp)),
              border: Border.all(color: Colors.transparent),
              color: color,
            ),
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
