import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/screens/login.dart';
import 'package:nectar/viewModel/cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';
class SetLocation extends StatelessWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
     var cubit=NectarCubit.get(context);
      return Scaffold(
        backgroundColor: Color(0xffFCFCFC),
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(leading: Icon(Icons.arrow_back_ios,color: Colors.black,),

          backgroundColor: Colors.transparent,elevation: 0,),
        body: SingleChildScrollView(
          child: Stack(children: [
            Image.asset("assets/Rectangle 17.jpg",height: 230.h,),
            Padding(
              padding: const EdgeInsets.only(top: 120,left: 15,right: 15),
              child:
            Column(children: [
              Image.asset("assets/illustration (1).png"),
              SizedBox(height: 10.h,),
              Text("Select Your Location",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 22.sp,fontWeight: FontWeight.bold),),),
              Text("Swith on your location to stay in tune with"
                  ,style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 14.sp,color:Color(0xff7C7C7C) ),),),
              Text("what’s happening in your area"
                ,style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 14.sp,color:Color(0xff7C7C7C) ),),),
              SizedBox(height: 50.h,),
              Align( alignment: Alignment.topLeft,
                child: Text("Your Area"
                  ,style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(fontSize: 15.sp,color:Color(0xff7C7C7C),fontWeight: FontWeight.w600 ),),),
              ),
SizedBox(height: 20.h,),
              TextFormField(
                onTap: (){
                  showCountryPicker(
                    context: context, // optional. Shows phone code before the country name.
                    onSelect: cubit.onSelect
      );},

                cursorColor:Color(0xffE2E2E2),
                controller: cubit.locationController,
                keyboardType: TextInputType.none,
                decoration:InputDecoration(
                  hintText: "Choose your area",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xffE2E2E2)),),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xffE2E2E2))),),),
             SizedBox(height: 100,),
              Container(width: 320.w,height: 60.h,
                child: ElevatedButton( style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                    backgroundColor:Color(0xff53B175)),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  }, child: Text("submit",style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
              )
            ],),),
          ],),
        ),
      );
    }, listener: (context,state){});
  }
}
