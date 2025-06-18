import 'package:flutter/material.dart';

import '../Cubit/edit_cubit.dart';

Widget buildScreenContent(EditCubit cubit) {
  return Scaffold(
    body: Stack(
      children: [
        buildBackgroundImage(cubit),
        buildContentColumn(cubit),
      ],
    ),
  );
}
Widget buildBackgroundImage(EditCubit cubit) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(cubit.photos[cubit.selectedindex]),
        fit: BoxFit.cover,
      ),
    ),
  );
}
Widget buildContentColumn(EditCubit cubit) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildHeader(),
        const SizedBox(height: 100),
        buildCounterCircle(cubit),
        const SizedBox(height: 20),
        buildCounterControls(cubit),
        const SizedBox(height: 50),
        buildPhotoSelectionRow(cubit),
      ],
    ),
  );
}
Widget buildHeader() {
  return Container(
    width: double.infinity,
    height: 100,
    color: Colors.blueGrey.shade900,
    child: const Center(
      child: Text(
        'سبحان الله',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
Widget buildCounterCircle(EditCubit cubit) {
  return Container(
    width: 150,
    height: 150,
    decoration: const BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Text(
        '${cubit.count}',
        style: TextStyle(
          fontSize: 50,
          color: Colors.blueGrey.shade900,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
Widget buildCounterControls(EditCubit cubit) {
  return Row(
    children: [
      IconButton(
        onPressed: cubit.reset,
        icon: const Icon(Icons.arrow_back_ios_new),
        color: Colors.white,
      ),
      const Spacer(),
      IconButton(
        onPressed: cubit.Increase,
        icon: const Icon(Icons.arrow_forward_ios),
        color: Colors.white,
      ),
    ],
  );
}
Widget buildPhotoSelectionRow(EditCubit cubit) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List.generate(
      cubit.photos.length,
          (index) => GestureDetector(
        onTap: () => cubit.chandephoto(index),
        child: const CircleAvatar(),
      ),
    ),
  );
}