part of 'color_c_cubit.dart';

abstract class ColorCState extends Equatable {
  const ColorCState(this.color);
  final Color color;
  @override
  List<Object> get props => [];
}

class ColorCInitial extends ColorCState {
  const ColorCInitial() : super(Colors.black38);
}

class ColorDownloaded extends ColorCState {
  final Color downloadedColor;
  const ColorDownloaded(this.downloadedColor) : super(downloadedColor);
}
