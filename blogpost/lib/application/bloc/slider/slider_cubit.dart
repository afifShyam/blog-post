import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_state.dart';
part 'slider_cubit.freezed.dart';
part 'slider_cubit.g.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit() : super(SliderState.initial());

  void changeValue(double value) => emit(state.copyWith(
        value: value,
      ));
  void changeSize(double value) => emit(state.copyWith(
        size: value,
      ));
  void changeColor(Color value) => emit(state.copyWith(
        colors: value,
      ));
}
