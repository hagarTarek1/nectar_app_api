import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../screens/details_exclusiveOffer.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit, NectarState>(
        builder: (context, state) {
          return SizedBox(
            width: 165.w,
            child: Material(
              borderRadius: BorderRadius.circular(20.r),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                elevation: 3,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsExclusive()));
                  },
                  child: Padding(
                    padding:
                    const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded( flex: 3,
                            child: Image.asset("assets/pngfuel 1.png")),
                        SizedBox(
                          height: 10.h,
                        ),
                        Expanded( flex: 1,
                          child: Text(
                            "Red Apple",
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 5.h,
                        // ),
                        Expanded( flex: 1,
                          child: Text(
                            "1kg, Priceg",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: grey,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Text(
                                "\$4.99",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 40.h,
                                width: 45.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(15.r)),
                                    backgroundColor: green,
                                  ),
                                  onPressed: () {},
                                  child: Image.asset("assets/Vector (5).png",color: Colors.white,),

                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
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