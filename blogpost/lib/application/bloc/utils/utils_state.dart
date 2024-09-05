part of 'utils_cubit.dart';

@freezed
class UtilsState with _$UtilsState {
  factory UtilsState({
    required bool hoverAppBar,
    required bool hoverPost,
    required bool hoverCreatePost,
  }) = _UtilsState;

  factory UtilsState.initial() => UtilsState(
        hoverAppBar: false,
        hoverPost: false,
        hoverCreatePost: false,
      );

  factory UtilsState.fromJson(Map<String, dynamic> json) =>
      _$UtilsStateFromJson(json);
}
