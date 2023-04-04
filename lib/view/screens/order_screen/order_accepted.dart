import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/screens/home_sceen/homeScreen.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../../../consts/consts.dart';
class OrderSuccess extends StatelessWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder:
    (context,state){
      return Scaffold(
        backgroundColor: backGround,
        body: Stack(children: [
          Image.asset("assets/Rectangle 17.jpg",height: 450.h,fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.only(top: 110,left: 50),
            child:
                Image.asset("assets/Group 6872.png",height: 220.h,width:240.w ,),),
            Padding(
              padding: const EdgeInsets.only(top: 400,left: 20),
              child: Column(
                children: [
              Text("Your Order has been",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w800),)),
                  Text("accepted",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w800),)),
                  SizedBox(height: 10.h,),
                  Text("Your items has been placcd and is on",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600,color: grey),)),
                  Text("it’s way to being processed",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600,color: grey),)),
                  SizedBox(height: 90.h,),
                  Container(width: 320.w,height: 60.h,
                  // margin: EdgeInsets.only(top: 100,bottom: 10,left: 20),
                    child: ElevatedButton( style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                        backgroundColor:green),
                      onPressed: (){
                      }, child: Text("Track Order",style:
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
            ),

        ],),
      );
    }, listener: (context,state){});
  }
}
