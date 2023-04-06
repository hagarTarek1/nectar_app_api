import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return Scaffold(
        backgroundColor: backGround,
        body: Padding(
          padding: EdgeInsets.only(top: 40,left: 10,right: 10),
          child: Column(children: [
            Row(children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 30.r,
              ),
          SizedBox(width: 20.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("user",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),),
                Padding(
                  padding: const EdgeInsets.only(bottom: 17,left: 3),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: Size(5.w, 5.h),
                        maximumSize: Size(double.infinity, 5.h),
                      ),
                      onPressed: (){}, child: Icon(Icons.edit_outlined,color: green,size: 22,)),
                )
                ],
              ),
          Text("Email",style:
          GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: grey),)),

        ],
          ),

        ],),
            SizedBox(height: 5.h,),
            Divider(thickness: 1.5.h,),
            Row(children: [
              Icon(Icons.shopping_bag_outlined),
              SizedBox(width: 10.w,),
              Text("orders",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
             Spacer(),
              IconButton(onPressed: (){},
                  icon:Icon( Icons.arrow_forward_ios,size: 18,))

            ],),
            Divider(thickness: 1.5.h,),
            Row(children: [
              Image.asset("assets/Vector (7).png"),
              SizedBox(width: 10.w,),
              Text("My Details",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
              Spacer(),
              IconButton(onPressed: (){},
                  icon:Icon( Icons.arrow_forward_ios,size: 18))

            ],),
            Divider(thickness: 1.5.h,),
            Row(children: [
              Icon(Icons.location_on),
              SizedBox(width: 10.w,),
              Text("Delivery Address",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
              Spacer(),
              IconButton(onPressed: (){},
                  icon:Icon( Icons.arrow_forward_ios,size: 18))

            ],),
            Divider(thickness: 1.5.h,),
            Row(children: [
              Icon(Icons.credit_card_sharp),
              SizedBox(width: 10.w,),
              Text("Payment Methods",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
              Spacer(),
              IconButton(onPressed: (){},
                  icon:Icon( Icons.arrow_forward_ios,size: 18))

            ],),
            Divider(thickness: 1.5.h,),
            Row(children: [
              Image.asset("assets/Vector (6).png"),
              SizedBox(width: 10.w,),
              Text("Promo Cord",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
              Spacer(),
              IconButton(onPressed: (){},
                  icon:Icon( Icons.arrow_forward_ios,size: 18))

            ],),
            Divider(thickness: 1.5.h,),
            Row(children: [
              Icon(Icons.notifications_none_outlined),
              SizedBox(width: 10.w,),
              Text("Notifecations ",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
              Spacer(),
              IconButton(onPressed: (){},
                  icon:Icon( Icons.arrow_forward_ios,size: 18))

            ],),
            Divider(thickness: 1.5.h,),
            Row(children: [
              Icon(Icons.help_outline),
              SizedBox(width: 10.w,),
              Text("Help ",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
              Spacer(),
              IconButton(onPressed: (){},
                  icon:Icon( Icons.arrow_forward_ios,size: 18))

            ],),
            Divider(thickness: 1.5.h,),
            Row(children: [
              Icon(Icons.error_outline),
              SizedBox(width: 10.w,),
              Text("About",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),)),
              Spacer(),
              IconButton(onPressed: (){},
                  icon:Icon( Icons.arrow_forward_ios,size: 18))

            ],),
            SizedBox(height: 10.h,),
            Container(width: 320.w,height: 60.h,
              child: ElevatedButton( style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                  backgroundColor:lightGrey),
                onPressed: (){
                }, child: Row(
                  children: [
                    Icon(Icons.output_sharp,color: green,),
                    SizedBox(width: 100,),
                    Text("Log Out",style:
                    GoogleFonts.poppins(textStyle:
                    TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: green),)),
                  ],
                ),),
            )
          ],),
        ),
      );
    }, listener: (context,state){});
  }
}
