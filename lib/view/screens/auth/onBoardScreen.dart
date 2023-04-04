import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/view/screens/auth/signin.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login-cubit.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login_state.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../consts/consts.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginState>(builder:(context,state){
      return Scaffold(
        backgroundColor: backGround,
        body: Hero(
          tag: 'GFG Tag',
          child: Stack(children: [
            Image.asset("assets/2.jpg", width: double.infinity,
              fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(top: 420,left: 20,right: 10),
            child: Column(children: [
              Image.asset("assets/carrot.png",height: 50.h,),
              SizedBox(height: 10.h,),
              Text("Welcome",style:
                  GoogleFonts.poppins(textStyle:
              TextStyle(color: Colors.white,fontSize: 30.sp,fontWeight: FontWeight.bold),),),
              Text("To our store",style:
              GoogleFonts.poppins(textStyle:TextStyle(color: Colors.white,fontSize: 30.sp,fontWeight: FontWeight.bold),),),
              SizedBox(height: 5.h,),
              Text("Ger your groceries in as fast as one hour",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(color: lightGrey,fontSize: 12.sp,fontWeight: FontWeight.bold),),),
            SizedBox(height: 25.h,),
              Container(width: 320.w,height: 60.h,
                child: ElevatedButton( style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                  backgroundColor:green),
                    onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                    }, child: Text("Get started",style:
                  GoogleFonts.poppins(textStyle:
                    TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
              )
            ],),
          )
          ],),
        ),
      );
    }, listener: (context,state){});
  }
}
