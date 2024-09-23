// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SliderState _$SliderStateFromJson(Map<String, dynamic> json) {
  return _SliderState.fromJson(json);
}

/// @nodoc
mixin _$SliderState {
  SliderStatus get status => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  Color get colors => throw _privateConstructorUsedError;

  /// Serializes this SliderState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderStateCopyWith<SliderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderStateCopyWith<$Res> {
  factory $SliderStateCopyWith(
          SliderState value, $Res Function(SliderState) then) =
      _$SliderStateCopyWithImpl<$Res, SliderState>;
  @useResult
  $Res call(
      {SliderStatus status,
      double value,
      double size,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson) Color colors});
}

/// @nodoc
class _$SliderStateCopyWithImpl<$Res, $Val extends SliderState>
    implements $SliderStateCopyWith<$Res> {
  _$SliderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? value = null,
    Object? size = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SliderStatus,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderStateImplCopyWith<$Res>
    implements $SliderStateCopyWith<$Res> {
  factory _$$SliderStateImplCopyWith(
          _$SliderStateImpl value, $Res Function(_$SliderStateImpl) then) =
      __$$SliderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SliderStatus status,
      double value,
      double size,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson) Color colors});
}

/// @nodoc
class __$$SliderStateImplCopyWithImpl<$Res>
    extends _$SliderStateCopyWithImpl<$Res, _$SliderStateImpl>
    implements _$$SliderStateImplCopyWith<$Res> {
  __$$SliderStateImplCopyWithImpl(
      _$SliderStateImpl _value, $Res Function(_$SliderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? value = null,
    Object? size = null,
    Object? colors = null,
  }) {
    return _then(_$SliderStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SliderStatus,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderStateImpl implements _SliderState {
  _$SliderStateImpl(
      {required this.status,
      required this.value,
      required this.size,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
      required this.colors});

  factory _$SliderStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderStateImplFromJson(json);

  @override
  final SliderStatus status;
  @override
  final double value;
  @override
  final double size;
  @override
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  final Color colors;

  @override
  String toString() {
    return 'SliderState(status: $status, value: $value, size: $size, colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.colors, colors) || other.colors == colors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, value, size, colors);

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderStateImplCopyWith<_$SliderStateImpl> get copyWith =>
      __$$SliderStateImplCopyWithImpl<_$SliderStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderStateImplToJson(
      this,
    );
  }
}

abstract class _SliderState implements SliderState {
  factory _SliderState(
      {required final SliderStatus status,
      required final double value,
      required final double size,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
      required final Color colors}) = _$SliderStateImpl;

  factory _SliderState.fromJson(Map<String, dynamic> json) =
      _$SliderStateImpl.fromJson;

  @override
  SliderStatus get status;
  @override
  double get value;
  @override
  double get size;
  @override
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  Color get colors;

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderStateImplCopyWith<_$SliderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
