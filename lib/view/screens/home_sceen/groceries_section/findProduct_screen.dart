import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/view/components/findProduct.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';
import '../../model/allCategories.dart';

class FindProductScreen extends StatelessWidget {
  const FindProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit=NectarCubit.get(context);
    return BlocConsumer<NectarCubit, NectarState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: backGround,
            appBar: AppBar(
              toolbarHeight: 70,
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Find Products",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Column(
                children: [
                  TextFormField(
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
                        borderRadius: BorderRadius.circular(18.r),
                        borderSide: BorderSide(color: lightGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: lightGrey)),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Expanded(
                    // height: 500,
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      shrinkWrap: true,
                      clipBehavior: Clip.none,
                      children: List.generate(
                      cubit.allCategories?.data?.categories?.length ??0, (index) => FindProducts(categories: cubit.allCategories?.data
                          ?.categories?[index] ??
                          Category() ,)),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
