import 'package:bloc/bloc.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/view/screens/cart_screen/cart_screen.dart';
import 'package:nectar/view/screens/exploreScreen.dart';
import 'package:nectar/view/screens/favorite_screen.dart';
import 'package:nectar/view/screens/home_sceen/homeScreen.dart';
import 'package:nectar/view/screens/profile_screen.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

class NectarCubit extends Cubit<NectarState>{
  NectarCubit():super(InitState());
  static NectarCubit get(context)=> BlocProvider.of<NectarCubit>(context);

  int count=1;
  bool isShow=false;
  bool isShowR=false;
  int currentIndex=0;

  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  plusCount (){
   count++;
   emit(PlusSuccess());
  }
  minisCount(){
  if(count>0){
    count--;
  }
   emit(MinisSuccess());
  }
  showWidget(){
   isShow =! isShow;
   emit(ShowSuccess());
  }

  showWidget3(){
    isShowR =! isShowR;
    emit(ShowSuccess());
  }
  changeCurrentIndex (i){
   currentIndex=i;
 emit(ChangeSuccess());
  }
}