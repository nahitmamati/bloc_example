import 'package:bloc_example/features/project1/project1_cubit.dart';
import 'package:bloc_example/features/project2/project2_cubit.dart';
import 'package:bloc_example/features/project2/project2_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Project2Page extends StatelessWidget {
  const Project2Page({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable<String> names = <String>["Nahit","Asya", "Beyza", "Mert", "Tunahan", "Azra"];
    return BlocProvider(create: 
    (context) => Project2Cubit(names: names),
    child: Project2View(),
    );
  }
}