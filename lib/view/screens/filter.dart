import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';

import '../../consts/consts.dart';
import '../../viewModel/cubit/main_cubit/nectar_state.dart';
class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder:(context,state){
      return Scaffold(
          backgroundColor: backGround,
          appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 90.h,
          centerTitle: true,
          title:Text("Filters",style:
          GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 22.sp,fontWeight: FontWeight.bold,color: Colors.black)),),),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: TextFormField(
              onTap: () {
                showMaterialModalBottomSheet(
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(30.r),topLeft: Radius.circular(30.r))),
                  context: context,
                  builder: (context) => SingleChildScrollView(
                      controller: ModalScrollController.of(context),
                      child: Container(
                        height: 600.h,
                        decoration: BoxDecoration(
                          color: grey,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r)),
                        ),
                      )
                  ),
                );  },
              keyboardType: TextInputType.none,
              cursorColor: lightGrey,
              decoration: InputDecoration(
                hintText: "Search Store",
                prefixIcon: Icon(
                  Icons.search,
                  color: darkGrey,
                ),
                filled: true,
                fillColor: lightGrey,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: lightGrey),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: lightGrey)),
              ),
            ),
          ),
        ],)
      );
    }, listener:(context,state){});
  }
}
