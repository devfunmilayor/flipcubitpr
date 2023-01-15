// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flipcubitpr/cubit/color/color_c_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () => context.read<ColorCCubit>().changeColor(),
      ),
      body: BlocBuilder<ColorCCubit, ColorCState>(
        builder: (BuildContext context, ColorCState state) {
          return buildBody(state);
        },
      ),
    );
  }

  Widget buildBody(ColorCState state) {
    return Container(
      color: state.color,
    );
  }
}
