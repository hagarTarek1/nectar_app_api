import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/viewModel/cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';
class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      var cubit=NectarCubit.get(context);
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          Image.asset("assets/pngfuel 1.png",height: 80.h,width: 80.w,),
       SizedBox(width: 10.w,),
        Column( crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text("Bell Pepper Red",style:
          GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.w700),)),
            Text("1kg, Price",style:
            GoogleFonts.poppins(textStyle:
            TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color: Color(0xff7C7C7C)),)),
           SizedBox(height: 10.h,),
            Row( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                   height:32.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                        color: Color(0xffE2E2E2),
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
                        color: Color(0xffE2E2E2),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                  child: IconButton(onPressed: (){
                    cubit.plusCount();
                  }, icon: Image.asset("assets/Vector (5).png",width: 15.w,))),
              ],),
        ],),
          Spacer(),
          Column(children: [
            IconButton(onPressed: (){}, icon: Image.asset("assets/cancel.png") ,),
            SizedBox(height: 25.h,),

            Text("4.99",style:
            GoogleFonts.poppins(textStyle:
            TextStyle(fontSize: 15.sp,color: Colors.black,fontWeight: FontWeight.w700),)),

          ],)
     ],));
    }, listener: (context,state){});
  }
}
