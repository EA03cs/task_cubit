import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_cubit/Features/ChangeStates/Cubit/edit_cubit.dart';
import 'package:task_cubit/Features/ChangeStates/widgets/buildScreenContent.dart';
import 'package:task_cubit/Features/ChangeStates/widgets/handleStateChanges.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditCubit, EditState>(
      listener: (context, state) => handleStateChanges(context, state),
      builder: (context, state) {
        final cubit = context.read<EditCubit>();
        return buildScreenContent(cubit);
      },
    );
  }







}