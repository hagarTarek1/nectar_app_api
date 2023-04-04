import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/model/banner.dart';
import '../../viewModel/cubit/main_cubit/nectar_cubit.dart';
import '../../viewModel/cubit/main_cubit/nectar_state.dart';
class BannersDetails extends StatelessWidget {
  BannerModel banner;
  BannersDetails({required this.banner, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return Stack(children: [
        Image.asset("assets/Mask Group (2).png",height: 120,fit: BoxFit.fill),
        Image.asset("assets/Mask Group.png",height: 120,fit: BoxFit.fill,),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row( crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.network(banner.imageUrl?? "",height: 60,width: 80,),
            SizedBox(width: 20.w,),
            Column( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Fresh ${banner.title}",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w600),),),

              Text("Get Up To ${banner.discount} OFF",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(color: green,fontSize: 14.sp,fontWeight: FontWeight.w600),),),
            ],)
          ],),
        )
      ],);
    }, listener: (context,state){});
  }
}
