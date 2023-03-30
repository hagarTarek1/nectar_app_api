import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/viewModel/cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';
class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

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
              ],),
            Spacer(),
            Text("1.50",style:
            GoogleFonts.poppins(textStyle:
            TextStyle(fontSize: 15.sp,color: Colors.black,fontWeight: FontWeight.w700),)),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
          ],));
    }, listener: (context,state){});
  }
}
