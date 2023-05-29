import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/model/allCategories.dart';
import 'package:nectar/view/screens/findProduct_screen.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../../../viewModel/cubit/main_cubit/nectar_cubit.dart';
import '../../components/groceries.dart';

class GroceriesSection extends StatelessWidget {
  const GroceriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit, NectarState>(
        builder: (context, state) {
          var cubit = NectarCubit.get(context);
          return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Groceries",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindProductScreen()));
                        },
                        child: Text(
                          "see all",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: green,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                      height: 90.h,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Groceries( id: index,
                                category: cubit.allCategories?.data
                                        ?.categories?[index] ??
                                    Category());
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                width: 20.w,
                              ),
                          itemCount: cubit.allCategories?.data?.categories
                                  ?.length ??
                              0)),
                ],
              ));
        },
        listener: (context, state) {});
  }
}
