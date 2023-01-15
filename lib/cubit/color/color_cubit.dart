import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flipcubitpr/cubit/color/color_state.dart';

class ColorCubit extends Cubit<ColorState> {
	ColorCubit() : super(ColorState(isLoading: true));
	
	Future<void> loadInitialData() async {
		final stableState = state;
		try {
		  emit(state.copyWith(isLoading: true));
	
		  // TODO your code here
	
		  emit(state.copyWith(isLoading: false));
		} catch (error) {
		  emit(state.copyWith(error: error.toString()));
		  emit(stableState.copyWith(isLoading: false));
		}
	}
}
