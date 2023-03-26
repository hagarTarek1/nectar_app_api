import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/screens/setLocation.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../viewModel/cubit/nectar_cubit.dart';
import '../../viewModel/cubit/nectar_state.dart';
class CodeScreen extends StatelessWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      var cubit=NectarCubit.get(context);
      return Scaffold(
        backgroundColor: Color(0xffFCFCFC),
        floatingActionButton: Container(
          height: 60.h,
          width: 60.h,
          child: FloatingActionButton(
            backgroundColor: Color(0xff53B175),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SetLocation()));
            },
            child: Icon(Icons.arrow_forward_ios),),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(leading: Icon(Icons.arrow_back_ios,color: Colors.black,),

          backgroundColor: Colors.transparent,elevation: 0,),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Stack(
              children: [
          Image.asset("assets/Rectangle 17.jpg",height: 230.h,),

          Padding(
            padding: const EdgeInsets.only(top: 150,left: 20),
            child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter your 4-digit code",style:
                        GoogleFonts.poppins(textStyle:
                        TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),),
                        SizedBox(height: 15.h,),
                        Text("code",style:
                        GoogleFonts.poppins(textStyle:
                        TextStyle(color: Color(0xff7C7C7C),fontSize: 16.sp,fontWeight: FontWeight.bold),),),
                      ],
                    ),
          ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 200),
               child:SizedBox( height: 50.h, width: 180.w,
                 child: PinCodeTextField(
                   controller: cubit.codeController,
                   length: 4,
                   obscureText: false,
                   animationType: AnimationType.fade,
                   pinTheme: PinTheme(
                     shape: PinCodeFieldShape.underline,
                     borderRadius: BorderRadius.circular(5),

                     fieldHeight: 40,
                     fieldWidth: 30,
                     activeFillColor: Colors.white,
                     inactiveColor: Colors.black,
                     selectedColor: Colors.red
                   ),
                   appContext: context, onChanged: (String value) {},
            ),
               ),),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(thickness: 2,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 390,right: 220),
              child: TextButton(onPressed: (){}, child: Text("Resend Code",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(color: Color(0xff53B175),fontSize: 16.sp,fontWeight: FontWeight.w600),),),
      ),
            )
          ],),
        ),
      );
    }, listener: (context,state){});
  }
}
