class RandomDState {
	final bool isLoading;
	final String? error;
	  
	const RandomDState({
		this.isLoading = false,
		this.error,
	});
	  
	RandomDState copyWith({
		bool? isLoading,
		String? error,
	}) {
		return RandomDState(
			isLoading: isLoading ?? this.isLoading,
			error: error ?? this.error,
		);
	}
}
