import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/edit_cubit.dart';

void handleStateChanges(BuildContext context, EditState state) {
  final cubit = context.read<EditCubit>();

  if (state is incrementState) {
    showSnackBar(
      context,
      'اتزودت لـ ${cubit.count}',
    );
  } else if (state is chandephotoo) {
    showSnackBar(
      context,
      'تم تغيير الصورة',
    );
  }
}
void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      duration: const Duration(seconds: 1),
    ),
  );
}
