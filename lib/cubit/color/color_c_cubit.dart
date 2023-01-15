import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'color_c_state.dart';

class ColorCCubit extends Cubit<ColorCState> {
  ColorCCubit() : super(const ColorCInitial());

  void changeColor() {
    emit(const ColorDownloaded(Colors.redAccent));
  }
}
