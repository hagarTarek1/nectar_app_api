import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/view/components/banner.dart';
import 'package:nectar/view/screens/filter.dart';
import 'package:nectar/view/screens/findProduct_screen.dart';
import 'package:nectar/view/screens/home_sceen/groceriesSection.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login-cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../../../viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'offer_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit, NectarState>(
        builder: (context, state) {
          var cubit = NectarCubit.get(context);
          return Scaffold(
            backgroundColor: backGround,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              toolbarHeight: 90.h,
              title: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/1.png",
                      fit: BoxFit.cover,
                      height: 30.h,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: darkGrey,
                        ),
                        Text(
                          "${LoginCubit.get(context).locationController.text}",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: darkGrey,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: TextFormField(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterScreen()));
                      },
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
                          borderRadius: BorderRadius.circular(18.r),
                          borderSide: BorderSide(color: lightGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  //Image.asset("assets/banner (2).png"),
                  BannerSection(),
                  //SizedBox(height: 15.h,),
                  OfferSection(),
                  SizedBox(
                    height: 10.h,
                  ),
                  GroceriesSection(),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
