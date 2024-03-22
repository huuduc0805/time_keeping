import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_keeping/modules/login/blocks/image_block.dart';
import 'package:time_keeping/modules/login/blocks/title_block.dart';
import 'package:time_keeping/modules/login/widgets/button.dart';
import 'package:time_keeping/modules/login/widgets/text_field_email.dart';
import 'package:time_keeping/modules/login/widgets/text_field_pass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisibility = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF27AE60),
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xFF303030),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ImageBlock(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleBlock(),
                    SizedBox(height: 15.sp),
                    TextFieldEmailWidget(
                      text: 'Email Or Phone Number',
                      hintText: 'Enter your email or number',
                    ),
                    SizedBox(height: 23.sp),
                    TextFieldPassWidget(
                        text: 'Password',
                        hintText: 'Enter your password',
                        isVisibility: _isVisibility),
                    SizedBox(height: 20.sp),
                    ButtonWidget(
                      text: 'Login',
                      color: Color(0xFF27AE60),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
