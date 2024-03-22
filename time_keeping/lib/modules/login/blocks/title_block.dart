import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleBlock extends StatelessWidget {
  const TitleBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome to Exnodes,',
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 12.sp, color: Color(0xFFFFFFFF)),
        ),
        Text(
          'LOGIN',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 36.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}
