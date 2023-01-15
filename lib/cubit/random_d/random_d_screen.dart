import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flipcubitpr/cubit/random_d/random_d_cubit.dart';
import 'package:flipcubitpr/cubit/random_d/random_d_state.dart';

class RandomDScreen extends StatefulWidget {
	const RandomDScreen({Key? key}) : super(key: key);
	
	@override
	_RandomDScreenState createState() => _RandomDScreenState();
}
	
class _RandomDScreenState extends State<RandomDScreen> {
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
					if (state.error != null) {
						// TODO your code here
					}
				},
				builder: (BuildContext context, RandomDState state) {
					if (state.isLoading) {
						return Center(child: CircularProgressIndicator());
					}
	
					return buildBody(state);
				},
			),
		);
	}
	
	Widget buildBody(RandomDState state) {
		return ListView(
			children: [
				// TODO your code here
			],
		);
	}
}
