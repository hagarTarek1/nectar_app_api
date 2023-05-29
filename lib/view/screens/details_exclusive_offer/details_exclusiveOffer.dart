import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/view/screens/cart_screen/cart_screen.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../../viewModel/cubit/main_cubit/nectar_cubit.dart';
class DetailsExclusive extends StatelessWidget {
  List imgList=["assets/pngfuel 1.png"];
   DetailsExclusive({Key? key}) : super(key: key);

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
            backgroundColor: backGround,
            body:
                SingleChildScrollView(scrollDirection: Axis.vertical,
                  child: Stack(children: [
                    Container(
                      height: 310.h,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F3F2),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                      ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90,left: 25),
                      child:  CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            //aspectRatio: 19 / 6,
                            enlargeCenterPage: true,
                            viewportFraction: 0.8,
                          ),
                          items: imgList
                              .map((item)=> Image.asset(item,height: 400,width: 320,fit: BoxFit.fill,), ).toList(),),
                      //Image.asset("assets/pngfuel 1.png",height: 200,width: 320,fit: BoxFit.fill,),
                    ),
               Padding(
                   padding: const EdgeInsets.only(top: 375,left: 20,right: 20),
                   child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text("Naturel Red Apple",style:
                         GoogleFonts.poppins(textStyle:
                         TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),),
                      Spacer(),
                         Icon(Icons.favorite_border,color: Color(0xff7C7C7C),)
                       ],
                     ),
                       Text("1kg, Price",style:
                       GoogleFonts.poppins(textStyle:
                       TextStyle(color: grey,fontSize: 15.sp,fontWeight: FontWeight.w600),),),
                     SizedBox(height: 10.h,),
                       Row( crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                         IconButton(onPressed: (){
                           cubit.minisCount();
                         }, icon: Image.asset("assets/Vector (4).png"),),
                         Container( height:35.h,
                           width: 35.w,
                           decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(color: lightGrey,
                           width: 2.w),
                           borderRadius: BorderRadius.circular(10.r)
                         ),
                         child: Center(child: Text('${cubit.count}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),)),),
                         IconButton(onPressed: (){
                           cubit.plusCount();
                         }, icon: Icon(Icons.add,color: green,)),
                      Spacer(),
                           Text("\$4.99",style:
                           GoogleFonts.poppins(textStyle:
                           TextStyle(color: Colors.black,fontSize: 19.sp,fontWeight: FontWeight.bold),),),

                         ],),
                       SizedBox(height: 5.h,),
                       Divider(thickness: 1.5.h,color:lightGrey),
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
                       TextStyle(color: grey,fontSize: 13.sp,fontWeight: FontWeight.w600),),),
                       ),
                       SizedBox(height: 5.h,),
                       Divider(thickness: 1.5.h,color:lightGrey),
                       Row(children: [
                         Text("Review",style:
                         GoogleFonts.poppins(textStyle:
                         TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),),),
                         Spacer(),
                         RatingBar(
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
                         ),
                         IconButton(onPressed: (){},
                             icon:Icon( Icons.arrow_forward_ios))
                       ],),

                       SizedBox(height: 25.h,),
                       Container(width: 320.w,height: 60.h,
                         child: ElevatedButton( style: ElevatedButton.styleFrom(
                             shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                             backgroundColor:green),
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
