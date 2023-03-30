import 'package:bloc/bloc.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/viewModel/cubit/nectar_state.dart';

class NectarCubit extends Cubit<NectarState>{
  NectarCubit():super(InitState());
  static NectarCubit get(context)=> BlocProvider.of<NectarCubit>(context);
 TextEditingController numberController=TextEditingController();
 TextEditingController codeController=TextEditingController();
 TextEditingController locationController=TextEditingController();
 TextEditingController emailController=TextEditingController();
 TextEditingController passwordController=TextEditingController();
 TextEditingController usernameController=TextEditingController();
  static var formState=GlobalKey<FormState>();
  static var formState2=GlobalKey<FormState>();
  List<Color> colorsC=[Color(0xffF8A44C),Color(0xff53B175)];
  int count=1;
  bool isShow=false;
  bool isShowN=false;
  bool isShowR=false;
  int currentIndex=0;
 bool isObscure=true;

 showPassword(){
   isObscure =! isObscure;
   emit(ShowPasswordSuccess());
 }
  data() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid");
      emit(DataSuccess());
    }
    print("invalid");
    emit(DataError());
  }
  dataSignUp() {
    var formData = formState2.currentState;
    if (formData!.validate()) {
      print("valid");
      emit(DataSuccess());
    }
    print("invalid");
    emit(DataError());
  }
  onSelect (Country country) {
  print('Select country: ${country.displayName}');
  locationController.text=country.name;
  emit(OnSelectSuccess());
  }
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
  showWidget2(){
    isShowN =! isShowN;
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