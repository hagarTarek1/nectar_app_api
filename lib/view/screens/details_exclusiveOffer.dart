import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/screens/cart_screen.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';

import '../../viewModel/cubit/nectar_cubit.dart';
class DetailsExclusive extends StatelessWidget {
  const DetailsExclusive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(
        builder: (context,state){
          var cubit=NectarCubit.get(context);
          return Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: Colors.black,
              actions: [
              Icon(Icons.ios_share),
                SizedBox(width: 10.w,)
            ],),
            backgroundColor: Color(0xffFCFCFC),
            body:
                SingleChildScrollView(scrollDirection: Axis.vertical,
                  child: Stack(children: [
                    Container(
                      height: 300.h,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F3F2),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                      ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90,left: 25),
                      child: Image.asset("assets/pngfuel 1.png",height: 200,width: 320,fit: BoxFit.fill,),
                    ),
               Padding(
                   padding: const EdgeInsets.only(top: 350,left: 20,right: 20),
                   child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text("Naturel Red Apple",style:
                         GoogleFonts.poppins(textStyle:
                         TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w500),),),
                      Spacer(),
                         Icon(Icons.favorite_border,color: Color(0xff7C7C7C),)
                       ],
                     ),
                       Text("1kg, Price",style:
                       GoogleFonts.poppins(textStyle:
                       TextStyle(color: Color(0xff7C7C7C),fontSize: 15.sp,fontWeight: FontWeight.w600),),),
                     SizedBox(height: 10.h,),
                       Row( crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                         IconButton(onPressed: (){
                           cubit.minisCount();
                         }, icon: Image.asset("assets/Vector (4).png"),),
                         Container( height:30.h,
                           width: 30.w,
                           decoration: BoxDecoration(
                           color: Color(0xffE2E2E2),
                           borderRadius: BorderRadius.circular(10.r)
                         ),
                         child: Center(child: Text('${cubit.count}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),)),),
                         IconButton(onPressed: (){
                           cubit.plusCount();
                         }, icon: Icon(Icons.add,color: Color(0xff53B175),)),
                      Spacer(),
                           Text("4.99",style:
                           GoogleFonts.poppins(textStyle:
                           TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),),

                         ],),
                       SizedBox(height: 5.h,),
                       Divider(thickness: 2.h,color:Color(0xffE2E2E2)),
                       Row(children: [
                         Text("Product Detail",style:
                         GoogleFonts.poppins(textStyle:
                         TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),),),
                         Spacer(),
                         IconButton(onPressed: (){
                           cubit.showWidget();
                         }, icon: Icon( cubit.isShow==false?
                             Icons.keyboard_arrow_down_sharp:
                         Icons.arrow_forward_ios))
                       ],),
                       Visibility(
                         maintainSize: false,
                         maintainAnimation: true,
                         maintainState: true,
                         visible: cubit.isShow,
                         child:Text("Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",style:
                       GoogleFonts.poppins(textStyle:
                       TextStyle(color: Color(0xff7C7C7C),fontSize: 13.sp,fontWeight: FontWeight.w600),),),
                       ),
                       SizedBox(height: 5.h,),
                       Divider(thickness: 2.h,color:Color(0xffE2E2E2)),
                       Row(children: [
                         Text("Nutritions",style:
                         GoogleFonts.poppins(textStyle:
                         TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),),),
                         Spacer(),
                         IconButton(onPressed: (){
                           cubit.showWidget2();
                         }, icon: Icon( cubit.isShow==false?
                         Icons.keyboard_arrow_down_sharp:
                         Icons.arrow_forward_ios))
                       ],),
                       Visibility(
                         maintainSize: false,
                         maintainAnimation: true,
                         maintainState: true,
                         visible: cubit.isShowN,
                         child:Text("100gr",style:
                         GoogleFonts.poppins(textStyle:
                         TextStyle(color: Color(0xff7C7C7C),fontSize: 13.sp,fontWeight: FontWeight.w600),),),
                       ),
                       SizedBox(height: 5.h,),
                       Divider(thickness: 2.h,color:Color(0xffE2E2E2)),
                       Row(children: [
                         Text("Review",style:
                         GoogleFonts.poppins(textStyle:
                         TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),),),
                         Spacer(),
                         IconButton(onPressed: (){
                           cubit.showWidget3();
                         }, icon: Icon( cubit.isShow==false?
                         Icons.keyboard_arrow_down_sharp:
                         Icons.arrow_forward_ios))
                       ],),
                       Visibility(
                         maintainSize: false,
                         maintainAnimation: true,
                         maintainState: true,
                         visible: cubit.isShowR,
                         child: RatingBar(
                           itemSize: 25,
                           initialRating: 2.5,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemCount: 5,
                           ratingWidget: RatingWidget(
                             full: Icon(Icons.star,color: Color(0xffF3603F),),
                             half: Icon(Icons.star_half_outlined,color: Color(0xffF3603F)),
                             empty:Icon(Icons.star_border,color: Color(0xffF3603F)),
                           ),
                           itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                           onRatingUpdate: (rating) {
                             print(rating);
                           },
                         ),  ),
                       SizedBox(height: 14.h,),
                       Container(width: 320.w,height: 60.h,
                         child: ElevatedButton( style: ElevatedButton.styleFrom(
                             shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                             backgroundColor:Color(0xff53B175)),
                           onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                           }, child: Text("Add To Basket",style:
                           GoogleFonts.poppins(textStyle:
                           TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
                       )
                     ],),
               )


                  ],),
                ),
               );
        }, listener:(context,state){});
  }
}
