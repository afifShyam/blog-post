import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'utils_state.dart';
part 'utils_cubit.freezed.dart';
part 'utils_cubit.g.dart';

class UtilsCubit extends Cubit<UtilsState> {
  UtilsCubit() : super(UtilsState.initial());

  void hoverUser(bool hover) => emit(state.copyWith(
        hoverAppBar: hover,
      ));
  void hoverPost(bool hover) => emit(state.copyWith(
        hoverPost: hover,
      ));
  void hoverCreatePost(bool hover) => emit(state.copyWith(
        hoverCreatePost: hover,
      ));
}
