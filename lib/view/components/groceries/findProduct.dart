import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';
import 'dart:math' as math;

import '../../model/allCategories.dart';

class FindProducts extends StatelessWidget {
  Category? categories;
   FindProducts({required this.categories,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int randomColor = (math.Random().nextDouble() * 0xFFF8A44CB2).toInt();
    return BlocConsumer<NectarCubit, NectarState>(
        builder: (context, state) {
          return Material(
            borderRadius: BorderRadius.circular(20.r),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: SizedBox(
              height: 150.h,
              child: Card(
                margin: EdgeInsets.zero,
                color: Color(randomColor).withOpacity(.2),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(randomColor),
                     width: 2.5.w
                     //style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                elevation: 0,
                child: InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/pngfuel 1.png"),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          categories?.name ??"",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
