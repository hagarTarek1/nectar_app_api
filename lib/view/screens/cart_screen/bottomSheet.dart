import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/screens/order_screen/order_accepted.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../../../consts/consts.dart';

class BottomSheetDetails extends StatelessWidget {
  const BottomSheetDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return  Container(
        height: 450.h,
        decoration: BoxDecoration(
            color: bottomSheet,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r)),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20,left: 20,right: 15),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(children: [
                Text("Checkout",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),
                Spacer(),
                IconButton(onPressed: (){}, icon: Image.asset("assets/cancel.png",color: Colors.black,))
              ],),
              Divider(thickness: 1.h,),
              Row(children: [
                Text("Delivery",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: grey),)),
                Spacer(),
                Text("Select Method",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,),)),
                IconButton(onPressed: (){},
                    icon:Icon( Icons.arrow_forward_ios,size: 15,))
              ],),
              Divider(thickness: 1.h,),
              Row(children: [
                Text("Pament",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: grey),)),
                Spacer(),
                 Icon(Icons.credit_card_rounded),
                 IconButton(onPressed: (){},
                    icon:Icon( Icons.arrow_forward_ios,size: 15,))
              ],),
              Divider(thickness: 1.h,),
              Row(children: [
                Text("Promo Code",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: grey),)),
                Spacer(),
                Text("Pick discount",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,),)),
                IconButton(onPressed: (){},
                    icon:Icon( Icons.arrow_forward_ios,size: 15))
              ],),
              Divider(thickness: 1.h,),
              Row(children: [
                Text("Total Cost",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: grey),)),
                Spacer(),
                Text("\$4.99",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,),)),
                IconButton(onPressed: (){},
                    icon:Icon( Icons.arrow_forward_ios,size: 15))
              ],),
              Divider(thickness: 1.h,),
              Text("By placing an order you agree to our",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color: grey),)),
           SizedBox(height: 5.h,),
            Row( crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size(10.w, 10.h),
                  maximumSize: Size(double.infinity, 20.h),
                ),
                onPressed:(){} , child: Text("Terms",
                  style:
        GoogleFonts.poppins(textStyle:
        TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.black),)),
        ),
              SizedBox(width: 5.w,),
              Text("and",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color: grey),)),
                SizedBox(width: 5.w,),
                TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size(10.w, 10.h),
                  maximumSize: Size(double.infinity, 20.h),
                ),
                onPressed:(){} , child: Text("Conditions",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.black),)),
              ),

            ],),
                SizedBox(height: 5.h,),
              Container(width: 320.w,height: 60.h,
                child: ElevatedButton( style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                    backgroundColor:green),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSuccess()));
                  }, child: Text("Place Order",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
              )
            ],),
          ),
        ),
      );
    }
        , listener: (context,state){});
  }
}
