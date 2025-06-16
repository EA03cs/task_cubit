import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_cubit/Core/Cubit/Cubit.dart';
import 'package:task_cubit/Core/resources/values_manager.dart';

import '../../Core/Cubit/CubitModel.dart';

class testtt extends StatelessWidget {
  const testtt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: BlocBuilder<testCubit, Cubitt>(
          builder: (context, state) {
            final cubit = BlocProvider.of<testCubit>(context);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                Text(cubit.state.num.toString(), style: TextStyle(fontSize: AppSize.s50),),
                Container(
                  width: 100,
                  height: 100,
                  color: cubit.state.color,
                ),
                Text(cubit.state.name, style: TextStyle(fontSize: AppSize.s50),),
                ElevatedButton(
                  onPressed: () {
                    cubit.updateState(
                      Cubitt(
                        name:  cubit.state.name =='sayedd'? 'ddeyas': 'sayedd',
                        color: cubit.state.color == Colors.red ? Colors.green : Colors.red,
                        num: cubit.state.num + 1,
                      ),
                    );
                  },
                  child: Text('Change', style: TextStyle(fontSize: AppSize.s20),),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
