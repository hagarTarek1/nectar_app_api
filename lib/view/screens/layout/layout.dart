import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

import '../../../consts/consts.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit, NectarState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NectarCubit.get(context);
        return Scaffold(
          backgroundColor: backGround,
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.r),
              topRight: Radius.circular(25.r),
            ),
            child: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (i) {
                cubit.changeCurrentIndex(i);
              },
              backgroundColor: backGround,
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: IconThemeData(color: green),
              unselectedFontSize: 18,
              unselectedItemColor: Colors.black,
              unselectedLabelStyle:
                  TextStyle(color: Colors.black, fontSize: 14.sp),
              selectedItemColor:green,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/home.png",
                    color: Colors.black,
                  ),
                  activeIcon: Image.asset(
                    "assets/home.png",
                    color: green,
                  ),
                  label: 'Shop',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset("assets/explore.png"),
                  activeIcon: Image.asset(
                    "assets/explore.png",
                    color: green,
                  ),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset("assets/cart.png"),
                  activeIcon: Image.asset(
                    "assets/cart.png",
                    color: green,
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset("assets/profile.png"),
                  activeIcon: Image.asset(
                    "assets/profile.png",
                    color: green,
                  ),
                  label: 'Account',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
