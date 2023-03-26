import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/screens/mobilenumber.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';

import '../../viewModel/cubit/nectar_cubit.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      var cubit=NectarCubit.get(context);
      return Scaffold(
        backgroundColor: Color(0xffFCFCFC),

        extendBody: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Image.asset("assets/601 1.png"),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get your groceries\nwith nectar",style:
            GoogleFonts.poppins(textStyle:
            TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w600),),),
                SizedBox(height: 7.h,),
                TextFormField(
                  keyboardType: TextInputType.none,
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileNumberScreen()));
                 },
                  decoration:InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:  Color(0xffE2E2E2)),),
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xffE2E2E2))),),),
                SizedBox(height: 20,),
                Center(
                  child: Text("Or connect with social media",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(color: Colors.black45,fontSize: 14.sp,fontWeight: FontWeight.w700),),),
                ),
                SizedBox(height: 20.h,),
                Container(width: 320.w,height: 60.h,
                  child: ElevatedButton( style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                      backgroundColor: Color(0xff5383EC)),
                    onPressed: (){
                    }, child: Row(
                      children: [
                        SizedBox(width: 10.w,),
                      Image.asset("assets/Group 6795.png",height: 20.h,),
                        SizedBox(width: 40.w,),
                        Text("Continue with Google",style:
                        GoogleFonts.poppins(textStyle:
                        TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
                      ],
                    ),),
                ),
                SizedBox(height: 10.h,),
                SizedBox(width: 320.w,height: 60.h,
                  child: ElevatedButton( style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                      backgroundColor: Color(0xff5383EC)),
                    onPressed: (){
                    }, child: Row(
                      children: [
                        SizedBox(width: 10.w,),
                        Image.asset("assets/Vector (1).png",height: 20.h,),
                        SizedBox(width: 40.w,),
                        Text("Continue with Facebook",style:
                        GoogleFonts.poppins(textStyle:
                        TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
                      ],
                    ),),
                ),

              ],
            ),
          )
        ],),
      );
    }, listener: (context,state){});
  }
}
