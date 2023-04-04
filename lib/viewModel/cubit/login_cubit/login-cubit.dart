import 'package:bloc/bloc.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit():super(InitLoginState());
  static LoginCubit get(context)=> BlocProvider.of<LoginCubit>(context);
  TextEditingController numberController=TextEditingController();
  TextEditingController codeController=TextEditingController();
  TextEditingController locationController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController usernameController=TextEditingController();
  static var formState=GlobalKey<FormState>();
  static var formState2=GlobalKey<FormState>();
  bool isObscure=true;
  showPassword(){
    isObscure =! isObscure;
    emit(ShowPasswordSuccess());
  }
  Future<void> data() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid");
      emit(DataSuccess());
    }else {
      print("invalid");
      emit(DataError());
      throw 'invalid';
    }
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
}