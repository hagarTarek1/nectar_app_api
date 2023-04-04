import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/consts/consts.dart';
import 'package:nectar/view/components/explore.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_cubit.dart';
import 'package:nectar/viewModel/cubit/main_cubit/nectar_state.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NectarCubit,NectarState>(builder: (context,state){
      return Scaffold(
        backgroundColor:backGround,

        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          leadingWidth: 2,
          backgroundColor:Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextFormField(
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
actions: [Padding(
  padding: const EdgeInsets.only(top: 20,right: 5),
  child:   IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
)],
        ),
        body: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                mainAxisSpacing: 15,
                  childAspectRatio: 10/15,
                crossAxisSpacing: 15,
                clipBehavior: Clip.none,
                shrinkWrap: true,
                children: List.generate(8, (index) => Explore()),),
              ),
            ],
          ),
        ),
      );
    }, listener: (context,state){});
  }
}
