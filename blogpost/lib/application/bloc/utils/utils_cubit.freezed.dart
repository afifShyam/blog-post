// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'utils_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UtilsState _$UtilsStateFromJson(Map<String, dynamic> json) {
  return _UtilsState.fromJson(json);
}

/// @nodoc
mixin _$UtilsState {
  bool get hoverAppBar => throw _privateConstructorUsedError;
  bool get hoverPost => throw _privateConstructorUsedError;
  bool get hoverCreatePost => throw _privateConstructorUsedError;

  /// Serializes this UtilsState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UtilsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UtilsStateCopyWith<UtilsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilsStateCopyWith<$Res> {
  factory $UtilsStateCopyWith(
          UtilsState value, $Res Function(UtilsState) then) =
      _$UtilsStateCopyWithImpl<$Res, UtilsState>;
  @useResult
  $Res call({bool hoverAppBar, bool hoverPost, bool hoverCreatePost});
}

/// @nodoc
class _$UtilsStateCopyWithImpl<$Res, $Val extends UtilsState>
    implements $UtilsStateCopyWith<$Res> {
  _$UtilsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UtilsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hoverAppBar = null,
    Object? hoverPost = null,
    Object? hoverCreatePost = null,
  }) {
    return _then(_value.copyWith(
      hoverAppBar: null == hoverAppBar
          ? _value.hoverAppBar
          : hoverAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      hoverPost: null == hoverPost
          ? _value.hoverPost
          : hoverPost // ignore: cast_nullable_to_non_nullable
              as bool,
      hoverCreatePost: null == hoverCreatePost
          ? _value.hoverCreatePost
          : hoverCreatePost // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UtilsStateImplCopyWith<$Res>
    implements $UtilsStateCopyWith<$Res> {
  factory _$$UtilsStateImplCopyWith(
          _$UtilsStateImpl value, $Res Function(_$UtilsStateImpl) then) =
      __$$UtilsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hoverAppBar, bool hoverPost, bool hoverCreatePost});
}

/// @nodoc
class __$$UtilsStateImplCopyWithImpl<$Res>
    extends _$UtilsStateCopyWithImpl<$Res, _$UtilsStateImpl>
    implements _$$UtilsStateImplCopyWith<$Res> {
  __$$UtilsStateImplCopyWithImpl(
      _$UtilsStateImpl _value, $Res Function(_$UtilsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UtilsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hoverAppBar = null,
    Object? hoverPost = null,
    Object? hoverCreatePost = null,
  }) {
    return _then(_$UtilsStateImpl(
      hoverAppBar: null == hoverAppBar
          ? _value.hoverAppBar
          : hoverAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      hoverPost: null == hoverPost
          ? _value.hoverPost
          : hoverPost // ignore: cast_nullable_to_non_nullable
              as bool,
      hoverCreatePost: null == hoverCreatePost
          ? _value.hoverCreatePost
          : hoverCreatePost // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UtilsStateImpl implements _UtilsState {
  _$UtilsStateImpl(
      {required this.hoverAppBar,
      required this.hoverPost,
      required this.hoverCreatePost});

  factory _$UtilsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UtilsStateImplFromJson(json);

  @override
  final bool hoverAppBar;
  @override
  final bool hoverPost;
  @override
  final bool hoverCreatePost;

  @override
  String toString() {
    return 'UtilsState(hoverAppBar: $hoverAppBar, hoverPost: $hoverPost, hoverCreatePost: $hoverCreatePost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtilsStateImpl &&
            (identical(other.hoverAppBar, hoverAppBar) ||
                other.hoverAppBar == hoverAppBar) &&
            (identical(other.hoverPost, hoverPost) ||
                other.hoverPost == hoverPost) &&
            (identical(other.hoverCreatePost, hoverCreatePost) ||
                other.hoverCreatePost == hoverCreatePost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hoverAppBar, hoverPost, hoverCreatePost);

  /// Create a copy of UtilsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UtilsStateImplCopyWith<_$UtilsStateImpl> get copyWith =>
      __$$UtilsStateImplCopyWithImpl<_$UtilsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UtilsStateImplToJson(
      this,
    );
  }
}

abstract class _UtilsState implements UtilsState {
  factory _UtilsState(
      {required final bool hoverAppBar,
      required final bool hoverPost,
      required final bool hoverCreatePost}) = _$UtilsStateImpl;

  factory _UtilsState.fromJson(Map<String, dynamic> json) =
      _$UtilsStateImpl.fromJson;

  @override
  bool get hoverAppBar;
  @override
  bool get hoverPost;
  @override
  bool get hoverCreatePost;

  /// Create a copy of UtilsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UtilsStateImplCopyWith<_$UtilsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
