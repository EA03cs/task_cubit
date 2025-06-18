import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_cubit/Features/ChangeStates/Cubit/edit_cubit.dart';
import 'package:task_cubit/Features/ChangeStates/changeIt.dart';

import 'Core/Cubit/Cubit.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditCubit(),
      child: MaterialApp(
        home: TestScreen(),
      ),
    );
  }
}
