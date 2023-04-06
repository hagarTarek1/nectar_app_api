import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login-cubit.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login_state.dart';

import 'codeScreen.dart';

class MobileNumberScreen extends StatelessWidget {
  const MobileNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginState>(builder: (context,state){
     var cubit=LoginCubit.get(context);
      return Scaffold(
        backgroundColor: backGround,
        floatingActionButton: Container(
          height: 60.h,
          width: 60.h,
          child: FloatingActionButton(
            backgroundColor: green,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CodeScreen()));
            },
          child: Icon(Icons.arrow_forward_ios),),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(leading: Icon(Icons.arrow_back_ios,color: Colors.black,),

          backgroundColor: Colors.transparent,elevation: 0,),
        body: Column(children: [
          Stack(
            children: [
            Image.asset("assets/Rectangle 17.jpg",height: 230.h,),
              Padding(
                padding: const EdgeInsets.only(top: 140,left: 20),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Enter your mobile number",style:
                   GoogleFonts.poppins(textStyle:
                   TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w600),),),
         SizedBox(height: 25.h,),
                Text("Mobile Number",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: grey,fontSize: 16.sp,fontWeight: FontWeight.w600),),),
                 ],
         ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: IntlPhoneField(
      decoration: InputDecoration(
      labelText: 'Phone Number',
      enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color:  lightGrey),),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                     color:  lightGrey)),),
      initialCountryCode: 'IN',
      onChanged: (phone) {
      print(phone.completeNumber);
      },
      )
          ), ],),
      );
    }, listener: (context,state){});
  }
}

