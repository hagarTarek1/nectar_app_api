import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/viewModel/cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';
class BestSelling extends StatelessWidget {
  const BestSelling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return InkWell(onTap: (){},
        child: SizedBox(
          width: 165.w,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
            elevation: 5,
            child:
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/pngfuel 1.png"),
                  SizedBox(height: 20.h,),
                  Text("Red Apple",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w700),),),

                  SizedBox(height: 5.h,),
                  Text("1kg, Priceg",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(color: Color(0xff7C7C7C),fontSize: 12.sp,fontWeight: FontWeight.w600),),),
                  SizedBox(height: 15.h,),
                  Row(children: [
                    Text("4.99",style:
                    GoogleFonts.poppins(textStyle:
                    TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),),
                    Spacer(),
                    SizedBox( height: 40.h, width: 50.w,
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r
                        )),
                        backgroundColor: Color(0xff53B175),
                      ),
                          onPressed: (){}, child: Icon(Icons.add,size: 16.r,)),
                    ),
                  ],),
                  SizedBox(height: 20.h,)
                ],),
            ),
          ),
        ),
      );
    }, listener:(context,state){} );
  }
}
