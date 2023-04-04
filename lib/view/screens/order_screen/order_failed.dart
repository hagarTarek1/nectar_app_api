import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../../../consts/consts.dart';
import '../home_sceen/homeScreen.dart';
class OrderFailed extends StatelessWidget {
  const OrderFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return Container(
        height: 460.h,
        width: 450.w,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Image.asset("assets/cancel.png",color: Colors.black,),
          ),
          Image.asset("assets/image 13.png",height: 200.h,),
          SizedBox(height: 20.h,),
        Text("Oops! Order Failed",style:
        GoogleFonts.poppins(textStyle:
        TextStyle(fontSize: 22.sp,fontWeight: FontWeight.bold),)),
          SizedBox(height: 10.h,),
          Text("Something went tembly wrong.",style:
          GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: grey),)),
          SizedBox(height: 50.h,),
          Container(width: 320.w,height: 60.h,
            // margin: EdgeInsets.only(top: 100,bottom: 10,left: 20),
            child: ElevatedButton( style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                backgroundColor:green),
              onPressed: (){
              }, child: Text("Please Try Again",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
          ),
          SizedBox(height: 10.h,),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          }, child: Text("Back to home",style:
          GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.black),)))

        ],),
      );
    }, listener: (context,state){});
  }
}
