import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/viewModel/cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';

class Groceries extends StatelessWidget {
  const Groceries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      var cubit=NectarCubit.get(context);
      return InkWell(onTap: (){},
        child: Container(
          padding: EdgeInsets.all(15),
          width: 200.w,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: Color(0xffF8A44C),
          ),
          child: Row(children: [
            Image.asset("assets/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png"),
            SizedBox(width: 10.w,),
            Text("Pulses",style:
            GoogleFonts.poppins(textStyle:
            TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w600),),),
          ],),
        ),
      );
    }, listener: (context,state){});
  }
}
