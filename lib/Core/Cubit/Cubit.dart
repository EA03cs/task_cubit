import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CubitModel.dart';

class testCubit extends Cubit<Cubitt> {
  testCubit() : super(Cubitt(name: 'ddeyas', color: Colors.red, num: 0));

  void updateState(Cubitt newState) {
    emit(newState);
  }

}
