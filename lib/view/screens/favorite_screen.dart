import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/view/components/favorite.dart';
import 'package:nectar/view/screens/order_screen/order_failed.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return Scaffold(
        backgroundColor:backGround,
        appBar: AppBar(
          elevation: 1,
          toolbarHeight: 80,
          backgroundColor: backGround,
          centerTitle: true,
          title: Text("Favorite",style:
          GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700,color: Colors.black),)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Expanded( flex: 2,
              child: ListView.separated(
                clipBehavior: Clip.none,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Favorite();
                  }, separatorBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.all(20),
                    child: Divider(thickness: 2,),
                  ), itemCount: 5),
            ),
            //SizedBox(height: 5.h,),
            Container(width: 320.w,height: 60.h,
              child: ElevatedButton( style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.r)),
                  backgroundColor:green),
                onPressed: (){
                  Dialogs.materialDialog(
                      color: Colors.white,
                      context: context,
                      actions: [
                  OrderFailed()
                      ]);
                }, child: Text("Add All To Cart",style:
                GoogleFonts.poppins(textStyle:
                TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),),
            )
          ],),
        ),
      );
    }
        , listener: (context,state){});
  }
}
