import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/components/best_selling.dart';
import 'package:nectar/view/components/exclusiveoffers.dart';
import 'package:nectar/view/components/groceries.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';

import '../../viewModel/cubit/nectar_cubit.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
     var cubit=NectarCubit.get(context);
      return Scaffold(
        bottomNavigationBar:
          ClipRRect(
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
      topRight: Radius.circular(25.r),
      ),
      child:
      BottomNavigationBar(
        currentIndex: cubit.currentIndex,
        onTap: (i){cubit.changeCurrentIndex(i);},
        backgroundColor: Color(0xffFFFFFF),
          type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color:Color(0xff53B175) ),
          unselectedFontSize: 18,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black,fontSize: 14.sp),
          selectedItemColor: Color(0xff53B175),
          items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/home.png"),
            label: 'Shop',

          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/explore.png"),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/cart.png"),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/profile.png"),
            label: 'Account',
          ),
        ],),),
        backgroundColor: Color(0xffFCFCFC),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 90.h,
          title: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Column( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset("assets/1.png",fit: BoxFit.cover,height: 30.h,),
              SizedBox(height: 5,),
              Row( crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.location_on,color: Color(0xff4C4F4D),),
                Text("Dhaka, Banassre",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: Color(0xff4C4F4D),fontSize: 15.sp,),),),
              ],)
            ],),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: SingleChildScrollView( scrollDirection: Axis.vertical,
            child: Column(children: [
              TextFormField(
                cursorColor:Color(0xffE2E2E2),
                decoration:InputDecoration(

                  hintText: "Search",
                  prefixIcon: Icon(Icons.search,color:Color(0xff4C4F4D) ,),
                  filled: true,
                  fillColor: Color(0xffF2F3F2),
                  enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.r),
                    borderSide: BorderSide(
                        color: Color(0xffE2E2E2)),),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xffE2E2E2))),),),
              SizedBox(height: 15.h,),
              Image.asset("assets/banner (2).png"),
              SizedBox(height: 15.h,),
              Row(children: [
                Text("Exclusive Offer",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w600),),),
              Spacer(),
                TextButton(onPressed: (){}, child: Text("see all",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: Color(0xff53B175),fontSize: 16.sp,fontWeight: FontWeight.w600),),),
                ),
              ],),
              Container( height: 230.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                      return ExclusiveOffer();
                      }, separatorBuilder: (context,index)=>SizedBox(width: 20.w,), itemCount: 3)),
              SizedBox(height: 10.h,),
              Row(children: [
                Text("Best Selling",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w600),),),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("see all",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: Color(0xff53B175),fontSize: 16.sp,fontWeight: FontWeight.w600),),),
                ),
              ],),
              SizedBox(height: 10.h,),
              Container( height: 230.h,
                  child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return BestSelling();
                  }, separatorBuilder: (context,index)=>SizedBox(width: 20.w,), itemCount: 3)),
              SizedBox(height: 10.h,),
              Row(children: [
                Text("Groceries",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: Colors.black,fontSize: 22.sp,fontWeight: FontWeight.w600),),),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("see all",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: Color(0xff53B175),fontSize: 16.sp,fontWeight: FontWeight.w600),),),
                ),
              ],),
              SizedBox(height: 10.h,),
              Container( height: 90.h,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Groceries();
                      }, separatorBuilder: (context,index)=>SizedBox(width: 20.w,), itemCount: 3)),
              SizedBox(height: 15.h,),
              Container( height: 230.h,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return ExclusiveOffer();
                      }, separatorBuilder: (context,index)=>SizedBox(width: 20.w,), itemCount: 3)),


            ],),
          ),
        ),
      );
    }, listener: (context,state){});
  }
}
