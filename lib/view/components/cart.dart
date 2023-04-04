import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';
class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      var cubit=NectarCubit.get(context);
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          Expanded( flex: 1,
              child: Image.asset("assets/pngfuel 1.png",)),
       SizedBox(width: 10.w,),
        Expanded( flex: 2,
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text("Bell Pepper Red",style:
            GoogleFonts.poppins(textStyle:
            TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.bold),)),
              Text("1kg, Price",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color: grey),)),
             SizedBox(height: 10.h,),
              Row( crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                     height:35.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: lightGrey,
                          width: 2.w),
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                    child: IconButton(onPressed: (){
                      cubit.minisCount();
                    }, icon: Image.asset("assets/Vector (4).png",width: 15.w,),),
                  ),
                  SizedBox(width: 8.w,),
                  Center(child: Text('${cubit.count}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),)),
                  SizedBox(width: 8.w,),
                  Container(
                     height:32.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: lightGrey,
                          width: 2.w),
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                    child: IconButton(onPressed: (){
                      cubit.plusCount();
                    }, icon: Image.asset("assets/Vector (5).png",width: 15.w,))),
                ],),
          ],),
        ),
          Spacer(),
          Column(children: [
            IconButton(onPressed: (){}, icon: Image.asset("assets/cancel.png") ,),
            SizedBox(height: 25.h,),

            Text("\$4.99",style:
            GoogleFonts.poppins(textStyle:
            TextStyle(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)),
          ],),
          SizedBox(width: 5.w,)
     ],));
    }, listener: (context,state){});
  }
}
