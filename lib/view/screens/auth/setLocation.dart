import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/view/screens/auth/login.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login-cubit.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login_state.dart';
class SetLocation extends StatelessWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginState>(builder: (context,state){
     var cubit=LoginCubit.get(context);
      return Scaffold(
        backgroundColor: backGround,
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
              TextStyle(fontSize: 14.sp,color:grey ),),),
              Text("what’s happening in your area"
                ,style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 14.sp,color:grey ),),),
              SizedBox(height: 50.h,),
              Align( alignment: Alignment.topLeft,
                child: Text("Your Area"
                  ,style:
                  GoogleFonts.poppins(textStyle:
                  TextStyle(fontSize: 15.sp,color:grey,fontWeight: FontWeight.w600 ),),),
              ),
SizedBox(height: 20.h,),
              TextFormField(
                onTap: (){
                  showCountryPicker(
                    context: context, // optional. Shows phone code before the country name.
                    onSelect: cubit.onSelect
      );},

                cursorColor:lightGrey,
                controller: cubit.locationController,
                keyboardType: TextInputType.none,
                decoration:InputDecoration(
                  hintText: "Choose your area",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: lightGrey),),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: lightGrey)),),),
             SizedBox(height: 100,),
              Container(width: 320.w,height: 60.h,
                child: ElevatedButton( style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                    backgroundColor:green),
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
