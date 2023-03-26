import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/screens/login.dart';

import '../../viewModel/cubit/nectar_cubit.dart';
import '../../viewModel/cubit/nectar_state.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      var cubit=NectarCubit.get(context);
      return Scaffold(
        backgroundColor: Color(0xffFCFCFC),
        body:
        SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset("assets/Rectangle 17.jpg",height: 230.h,),

              Padding(
                padding: const EdgeInsets.only(top: 80,left: 170),
                child: Image.asset("assets/1.png",height: 50.h,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170,left: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign Up",style:
                    GoogleFonts.poppins(textStyle:
                    TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w600),),),
                    SizedBox(height: 5.h,),
                    Text("Enter your credentials to continue",style:
                    GoogleFonts.poppins(textStyle:
                    TextStyle(color: Color(0xff7C7C7C),fontSize: 13.sp,fontWeight: FontWeight.w700),),),
                    SizedBox(height: 25.h,),
                    Form(key: NectarCubit.formState2,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text("Username",style:
                            GoogleFonts.poppins(textStyle:
                            TextStyle(color: Color(0xff7C7C7C),fontSize: 14.sp,fontWeight: FontWeight.w700),),),
                            SizedBox(height: 5.h,),
                            TextFormField(
                              controller: cubit.usernameController,
                              validator: (data){
                                if(data!.isEmpty){
                                  return "please enter your userName!";
                                } return null;
                              } ,
                              decoration:InputDecoration(
                                hintText: "Username",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:  Color(0xffE2E2E2)),),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffE2E2E2))),),),
                            SizedBox(height: 10.h,),
                            Text("Email",style:
                            GoogleFonts.poppins(textStyle:
                            TextStyle(color: Color(0xff7C7C7C),fontSize: 14.sp,fontWeight: FontWeight.w700),),),
                            SizedBox(height: 5.h,),
                            TextFormField(
                              controller: cubit.emailController,
                              validator: (data){
                                if(data!.isEmpty){
                                  return "please enter your email!";
                                } return null;
                              } ,
                              decoration:InputDecoration(
                                hintText: "Email",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:  Color(0xffE2E2E2)),),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffE2E2E2))),),),
                            SizedBox(height: 10.h,),
                            Text("Password",style:
                            GoogleFonts.poppins(textStyle:
                            TextStyle(color: Color(0xff7C7C7C),fontSize: 14.sp,fontWeight: FontWeight.w700),),),
                            SizedBox(height: 5.h,),
                            TextFormField(
                              controller: cubit.passwordController,
                              validator: (data){
                                if(data!.isEmpty){
                                  return "please enter your password!";
                                } return null;
                              } ,
                              obscureText: cubit.isObscure,
                              decoration:InputDecoration(
                                hintText: "password",
                                suffixIcon: IconButton(onPressed: (){
                                  cubit.showPassword();
                                },icon: Icon(cubit.isObscure? Icons.visibility:Icons.visibility_off),),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:  Color(0xffE2E2E2)),),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffE2E2E2))),),),
                                 Row( mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text("By continuing you agree to our",style:
                                     GoogleFonts.poppins(textStyle:
                                     TextStyle(fontSize: 12.sp,color: Color(0xff7C7C7C),fontWeight: FontWeight.bold),)),
                                     TextButton(onPressed: (){}, child: Text("Terms of service",style:
                                     GoogleFonts.poppins(textStyle:
                                     TextStyle(color: Color(0xff53B175),fontSize: 12.sp,fontWeight: FontWeight.w600),),),),
                                   ],),

                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Text("And",style:
                                     GoogleFonts.poppins(textStyle:
                                     TextStyle(fontSize: 12.sp,color: Color(0xff7C7C7C),fontWeight: FontWeight.bold),)),
                                     TextButton(onPressed: (){}, child: Text("Terms of service",style:
                                     GoogleFonts.poppins(textStyle:
                                     TextStyle(color: Color(0xff53B175),fontSize: 12.sp,fontWeight: FontWeight.w600),),),),
                                   ],),
                            SizedBox(width: 320.w,height: 60.h,
                              child: ElevatedButton( style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                                  backgroundColor:Color(0xff53B175)),
                                onPressed: (){
                                  cubit.dataSignUp();
                                }, child: Text("SignUp",style:
                                GoogleFonts.poppins(textStyle:
                                TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
                            ),
                          ]),
                    ),
                    Row( crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style:
                        GoogleFonts.poppins(textStyle:
                        TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),)),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        }, child: Text("Login",style:
                        GoogleFonts.poppins(textStyle:
                        TextStyle(color: Color(0xff53B175),fontSize: 12.sp,fontWeight: FontWeight.w600),),),),

                      ],)
                  ],),
              )
            ],
          ),
        ),

      );
    }, listener: (context,state){});
  }
}
