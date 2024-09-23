part of 'slider_cubit.dart';

enum SliderStatus {
  initial,
  loading,
  completed,
  error,
}

@freezed
class SliderState with _$SliderState {
  factory SliderState({
    required SliderStatus status,
    required double value,
    required double size,
    @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
    required Color colors,
  }) = _SliderState;

  factory SliderState.initial() => SliderState(
        status: SliderStatus.initial,
        value: 0,
        size: 200.0,
        colors: Colors.amber,
      );

  factory SliderState.fromJson(Map<String, dynamic> json) =>
      _$SliderStateFromJson(json);
}

Color _colorFromJson(int colorValue) {
  return Color(colorValue);
}

int _colorToJson(Color color) {
  return color.value;
}
