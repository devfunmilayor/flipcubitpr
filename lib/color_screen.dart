import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flipcubitpr/cubit/color/color_cubit.dart';
import 'package:flipcubitpr/cubit/color/color_state.dart';

class ColorScreen extends StatefulWidget {
	const ColorScreen({Key? key}) : super(key: key);
	
	@override
	_ColorScreenState createState() => _ColorScreenState();
}
	
class _ColorScreenState extends State<ColorScreen> {
	final screenCubit = ColorCubit();
	
	@override
	void initState() {
		screenCubit.loadInitialData();
		super.initState();
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: BlocConsumer<ColorCubit, ColorState>(
				bloc: screenCubit,
				listener: (BuildContext context, ColorState state) {
					if (state.error != null) {
						// TODO your code here
					}
				},
				builder: (BuildContext context, ColorState state) {
					if (state.isLoading) {
						return Center(child: CircularProgressIndicator());
					}
	
					return buildBody(state);
				},
			),
		);
	}
	
	Widget buildBody(ColorState state) {
		return ListView(
			children: [
				// TODO your code here
			],
		);
	}
}
