import 'package:bloc_example/features/project1/project1_cubit.dart';
import 'package:bloc_example/features/project1/project1_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Project1Page extends StatelessWidget {
  const Project1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: 
    (context) => Project1Cubit(),
    child: Project1View(),);
  }
}