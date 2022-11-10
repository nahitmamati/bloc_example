import 'package:bloc_example/features/project1/project1_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Project1View extends StatelessWidget {
  const Project1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           BlocBuilder<Project1Cubit, int>(builder: (context, state) {
              return Text(state.toString(), style: TextStyle(fontSize: 40),);
           },),
            SizedBox(height: 10,),
            ElevatedButton.icon(onPressed: (){
              context.read<Project1Cubit>().increment();
            }, icon: Icon(Icons.exposure_plus_1), label: Text("Increment")),
            SizedBox(height: 10,),
            ElevatedButton.icon(onPressed: (){
                     context.read<Project1Cubit>().decrement();
            }, icon: Icon(Icons.exposure_minus_1), label: Text("Increment")),
          ],
        ),
      ),
    );
  }
}