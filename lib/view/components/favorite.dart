import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';
class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      var cubit=NectarCubit.get(context);
      return Row(children: [
        Expanded( flex: 1,
            child: Image.asset("assets/pngfuel 1.png",)),
        SizedBox(width: 10.w,),
        Expanded( flex: 2,
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Bell Pepper",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),)),
              Text("1kg, Price",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: grey),)),
              SizedBox(height: 10.h,),
            ],),
        ),
        Spacer(),
        Text("\$1.50",style:
        GoogleFonts.poppins(textStyle:
        TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.w700),)),
      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
      ],);
    }, listener: (context,state){});
  }
}
