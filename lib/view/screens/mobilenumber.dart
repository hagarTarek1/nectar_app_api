import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/screens/codeScreen.dart';
import 'package:nectar/viewModel/cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';
class MobileNumberScreen extends StatelessWidget {
  const MobileNumberScreen({Key? key}) : super(key: key);

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
                   TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),),
         SizedBox(height: 10.h,),
                Text("Mobile Number",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(color: Color(0xff7C7C7C),fontSize: 16.sp,fontWeight: FontWeight.w600),),),
                 ],
         ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: TextFormField(
              cursorColor:Color(0xffE2E2E2),
              controller: cubit.numberController,
              keyboardType: TextInputType.number,
              decoration:InputDecoration(
                prefixIcon: Expanded(
                  child: SizedBox( width: 80.w,
                    child: IconButton(onPressed: (){showCountryPicker(
      context: context,
      showPhoneCode: true, // optional. Shows phone code before the country name.
      onSelect: cubit.onSelectNum);}
      ,icon: cubit.codeNumber.text.isEmpty?
                        Row(children: [
        Image.asset('assets/Rectangle 11.png',height: 15.h,),
                          SizedBox(width: 5.w,),
                          Text("+880",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),),
                          SizedBox(width: 5.w,),
                          Container(color: Colors.black26,width: 2.w,)
                        ],):
                        Row(children: [
                          //Text(cubit.flagCountry.text,style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),),
                          //Image.network(cubit.flagCountry.text,height: 5.h,),
                        SizedBox(width: 5.w,),
                        Text("+${cubit.codeNumber.text}",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5.w,),
                        Container(color: Colors.black26,width: 2.w,)
                    ],),
                ),
                  ),),
               hintText: "enter your number",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:  Color(0xffE2E2E2)),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:  Color(0xffE2E2E2))),),),
          ),
        ],),
      );
    }, listener: (context,state){});
  }
}

