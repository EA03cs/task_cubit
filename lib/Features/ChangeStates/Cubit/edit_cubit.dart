import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_state.dart';
class EditCubit extends Cubit<EditState> {
  EditCubit() : super(EditInitial());
  late int count = 0;
  int selectedindex = 0;
  List photos = [
    "assets/graduation.jpg",
    "assets/photo.jpg",
    "assets/graduation.jpg",
    "assets/photo.jpg",
  ];
  Increase() {
    count++;
    emit(incrementState());
  }
  reset() {
    count = 0;
    emit(EditInitial());
  }
  chandephoto(int index) {
    selectedindex = index;
    emit(chandephotoo());
  }

}
