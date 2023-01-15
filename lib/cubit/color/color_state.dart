class ColorState {
	final bool isLoading;
	final String? error;
	  
	const ColorState({
		this.isLoading = false,
		this.error,
	});
	  
	ColorState copyWith({
		bool? isLoading,
		String? error,
	}) {
		return ColorState(
			isLoading: isLoading ?? this.isLoading,
			error: error ?? this.error,
		);
	}
}
