// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flipcubitpr/cubit/random_d/random_d_cubit.dart';
import 'package:flipcubitpr/cubit/random_d/random_d_state.dart';

class RandomDScreen extends StatefulWidget {
  const RandomDScreen({Key? key}) : super(key: key);

  @override
  RandomDScreenState createState() => RandomDScreenState();
}

class RandomDScreenState extends State<RandomDScreen> {
  final screenCubit = RandomDCubit();

  @override
  void initState() {
    screenCubit.loadInitialData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RandomDCubit, RandomDState>(
        bloc: screenCubit,
        listener: (BuildContext context, RandomDState state) {
          if (state.error != null) {}
        },
        builder: (BuildContext context, RandomDState state) {
          if (state.isLoading) {
            // ignore: prefer_const_constructors
            return Center(child: CircularProgressIndicator());
          }

          return buildBody(state);
        },
      ),
    );
  }

  Widget buildBody(RandomDState state) {
    return ListView(
      children: [],
    );
  }
}
