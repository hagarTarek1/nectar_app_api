import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/view/components/cart.dart';
import 'package:nectar/view/screens/cart_screen/bottomSheet.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return Scaffold(
        backgroundColor:backGround,
        appBar: AppBar(
          elevation: 1,
          toolbarHeight: 80,
          backgroundColor: backGround,
          centerTitle: true,
          title: Text("My Cart",style:
          GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700,color: Colors.black),)),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox( height: 500.h,
              child: ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context,index){
                return MyCart();
              }, separatorBuilder: (context,index)=>Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(thickness: 2,),
              ), itemCount: 4),
            ),
            //SizedBox(height: 5.h,),
            Container(width: 320.w,height: 60.h,
              child: ElevatedButton( style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                  backgroundColor:green),
                onPressed: (){
                  showMaterialModalBottomSheet(
                    //clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(30.r),topLeft: Radius.circular(30.r))),
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      controller: ModalScrollController.of(context),
                      child: BottomSheetDetails()
                    ),
                  );
                }, child: Text("Go to Checkout",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
            )
          ],),
        ),
      );
    }
        , listener: (context,state){});
  }
}
