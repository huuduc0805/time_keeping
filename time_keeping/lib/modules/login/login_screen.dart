import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisibility = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF27AE60),
    ));
    return Scaffold(
      backgroundColor: Color(0xFF303030),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 264.sp,
              child: const Image(
                image: AssetImage('assets/images/Exnodes_login.png'),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Exnodes,',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        color: Color(0xFFFFFFFF)),
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
                  SizedBox(height: 15.sp),
                  Text(
                    'Email Or Phone Number',
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
                      hintText: 'Enter your email or number',
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
                  SizedBox(
                    height: 23.sp,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5.sp),
                  TextFormField(
                    obscureText: !_isVisibility,
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
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisibility = !_isVisibility;
                          });
                        },
                        icon: _isVisibility
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
                  SizedBox(height: 20.sp),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.sp,
                      width: 325.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.sp)),
                        border: Border.all(color: Colors.transparent),
                        color: Color(0xFF27AE60),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
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
    );
  }
}
