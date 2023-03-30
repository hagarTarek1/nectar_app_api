import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/components/cart.dart';
import 'package:nectar/viewModel/cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return Scaffold(
        backgroundColor:Color(0xffFCFCFC),
        appBar: AppBar(
          elevation: 1,
          toolbarHeight: 80,
          backgroundColor: Color(0xffFCFCFC),
          centerTitle: true,
          title: Text("My Cart",style:
          GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600,color: Colors.black),)),
        ),
        body: Column(children: [
          SizedBox( height: 480.h,
            child: ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context,index){
              return MyCart();
            }, separatorBuilder: (context,index)=>Divider(thickness: 2,), itemCount: 4),
          ),
          //SizedBox(height: 5.h,),
          Container(width: 320.w,height: 60.h,
            child: ElevatedButton( style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                backgroundColor:Color(0xff53B175)),
              onPressed: (){
              }, child: Text("Go to Checkout",style:
              GoogleFonts.poppins(textStyle:
              TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
          )
        ],),
      );
    }
        , listener: (context,state){});
  }
}
