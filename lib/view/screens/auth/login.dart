import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/view/screens/layout/layout.dart';
import 'package:nectar/view/screens/auth/signUpscreen.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login-cubit.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
        builder: (context, state) {
          var cubit = LoginCubit.get(context);
          return Scaffold(
            backgroundColor: backGround,
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/Rectangle 17.jpg",
                    height: 230.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 170),
                    child: Image.asset(
                      "assets/1.png",
                      height: 50.h,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 190, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Loging",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Enter your emails and password",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: grey,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Form(
                          key: LoginCubit.formState,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: grey,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TextFormField(
                                  controller: cubit.emailController,
                                  validator: (data) {
                                    if (data!.isEmpty) {
                                      return "please enter your email!";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: lightGrey),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: lightGrey)),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Password",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: grey,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TextFormField(
                                  controller: cubit.passwordController,
                                  validator: (data) {
                                    if (data!.isEmpty) {
                                      return "please enter your password!";
                                    }
                                    return null;
                                  },
                                  obscureText: cubit.isObscure,
                                  decoration: InputDecoration(
                                    hintText: "password",
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        cubit.showPassword();
                                      },
                                      icon: Icon(cubit.isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: lightGrey),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: lightGrey)),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Forgot Password?",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Color(0xff181725),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                SizedBox(
                                  width: 320.w,
                                  height: 60.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.r)),
                                        backgroundColor: green),
                                    onPressed: () {
                                      cubit.data().then((value) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Layout()));
                                      });
                                    },
                                    child: Text("Login",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                )),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()));
                              },
                              child: Text(
                                "SignUp",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: green,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
