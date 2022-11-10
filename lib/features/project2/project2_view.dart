import 'package:bloc_example/features/project2/project2_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Project2View extends StatelessWidget {
  const Project2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<Project2Cubit, String?>(builder: (context, state) {
              if (state !=null){
                  return Text(state, style: TextStyle(fontSize: 40),);
              }{
                return Container();
              }
            },),
            ElevatedButton(onPressed: (){
              context.read<Project2Cubit>().getRandomName();
            }, child: Text("Get Random Name")),
            
          ],
        ),
      ),
    );
  }
}