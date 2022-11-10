import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

extension RandomElement<T> on Iterable<T>{
 T getRandomElement() => elementAt(Random().nextInt(length));

}
class Project2Cubit extends Cubit<String?>{
  Iterable<String?> names;
  Project2Cubit({required this.names}): super(null);
  
  void getRandomName(){
    emit(names.getRandomElement());
  }
  
}

