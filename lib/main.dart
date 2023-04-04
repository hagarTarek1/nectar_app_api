import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/view/screens/auth/splashScreen.dart';
import 'package:nectar/viewModel/cubit/login_cubit/login-cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>NectarCubit()),
      BlocProvider(create: (context)=> LoginCubit())
    ], child: ScreenUtilInit( designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
    return MaterialApp(
      home: SplashScreen(),
    );}));
  }
}
