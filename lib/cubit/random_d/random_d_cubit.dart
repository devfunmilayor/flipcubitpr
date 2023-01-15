import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flipcubitpr/cubit/random_d/random_d_state.dart';

class RandomDCubit extends Cubit<RandomDState> {
	RandomDCubit() : super(RandomDState(isLoading: true));
	
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
