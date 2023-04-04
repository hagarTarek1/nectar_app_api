import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../../../viewModel/cubit/main_cubit/nectar_cubit.dart';
import '../../components/exclusiveoffers.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Exclusive Offer",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
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
            SizedBox(height: 10.h,),
            Container(
                height: 230.h,
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ExclusiveOffer();
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20.w,
                    ),
                    itemCount: 3)),
          ],
        ),
      );
    }, listener:(context,state){} );
  }
}
