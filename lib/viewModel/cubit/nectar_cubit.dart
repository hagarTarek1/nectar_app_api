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
 TextEditingController codeNumber=TextEditingController();
 TextEditingController flagCountry=TextEditingController();
  static var formState=GlobalKey<FormState>();
  static var formState2=GlobalKey<FormState>();

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
  onSelectNum (Country country) {
    print('Select country: ${country.displayName}');
    codeNumber.text=country.countryCode;
    flagCountry.text=country.flagEmoji;

    emit(OnSelectSuccess());
  }
}