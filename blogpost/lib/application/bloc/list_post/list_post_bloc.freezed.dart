// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListPostState _$ListPostStateFromJson(Map<String, dynamic> json) {
  return _ListPostState.fromJson(json);
}

/// @nodoc
mixin _$ListPostState {
  List<PostModel> get post => throw _privateConstructorUsedError;
  List<CommentModel> get specificComment => throw _privateConstructorUsedError;
  ListPostStatus get listPostStatus => throw _privateConstructorUsedError;
  DeletePostStatus get deletePostStatus => throw _privateConstructorUsedError;
  UpdateStatus get updateStatus => throw _privateConstructorUsedError;
  PostStatus get postStatus => throw _privateConstructorUsedError;
  PostModel get specificPost => throw _privateConstructorUsedError;

  /// Serializes this ListPostState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListPostStateCopyWith<ListPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPostStateCopyWith<$Res> {
  factory $ListPostStateCopyWith(
          ListPostState value, $Res Function(ListPostState) then) =
      _$ListPostStateCopyWithImpl<$Res, ListPostState>;
  @useResult
  $Res call(
      {List<PostModel> post,
      List<CommentModel> specificComment,
      ListPostStatus listPostStatus,
      DeletePostStatus deletePostStatus,
      UpdateStatus updateStatus,
      PostStatus postStatus,
      PostModel specificPost});

  $PostModelCopyWith<$Res> get specificPost;
}

/// @nodoc
class _$ListPostStateCopyWithImpl<$Res, $Val extends ListPostState>
    implements $ListPostStateCopyWith<$Res> {
  _$ListPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? specificComment = null,
    Object? listPostStatus = null,
    Object? deletePostStatus = null,
    Object? updateStatus = null,
    Object? postStatus = null,
    Object? specificPost = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      specificComment: null == specificComment
          ? _value.specificComment
          : specificComment // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      listPostStatus: null == listPostStatus
          ? _value.listPostStatus
          : listPostStatus // ignore: cast_nullable_to_non_nullable
              as ListPostStatus,
      deletePostStatus: null == deletePostStatus
          ? _value.deletePostStatus
          : deletePostStatus // ignore: cast_nullable_to_non_nullable
              as DeletePostStatus,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as UpdateStatus,
      postStatus: null == postStatus
          ? _value.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      specificPost: null == specificPost
          ? _value.specificPost
          : specificPost // ignore: cast_nullable_to_non_nullable
              as PostModel,
    ) as $Val);
  }

  /// Create a copy of ListPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostModelCopyWith<$Res> get specificPost {
    return $PostModelCopyWith<$Res>(_value.specificPost, (value) {
      return _then(_value.copyWith(specificPost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListPostStateImplCopyWith<$Res>
    implements $ListPostStateCopyWith<$Res> {
  factory _$$ListPostStateImplCopyWith(
          _$ListPostStateImpl value, $Res Function(_$ListPostStateImpl) then) =
      __$$ListPostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PostModel> post,
      List<CommentModel> specificComment,
      ListPostStatus listPostStatus,
      DeletePostStatus deletePostStatus,
      UpdateStatus updateStatus,
      PostStatus postStatus,
      PostModel specificPost});

  @override
  $PostModelCopyWith<$Res> get specificPost;
}

/// @nodoc
class __$$ListPostStateImplCopyWithImpl<$Res>
    extends _$ListPostStateCopyWithImpl<$Res, _$ListPostStateImpl>
    implements _$$ListPostStateImplCopyWith<$Res> {
  __$$ListPostStateImplCopyWithImpl(
      _$ListPostStateImpl _value, $Res Function(_$ListPostStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? specificComment = null,
    Object? listPostStatus = null,
    Object? deletePostStatus = null,
    Object? updateStatus = null,
    Object? postStatus = null,
    Object? specificPost = null,
  }) {
    return _then(_$ListPostStateImpl(
      post: null == post
          ? _value._post
          : post // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      specificComment: null == specificComment
          ? _value._specificComment
          : specificComment // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      listPostStatus: null == listPostStatus
          ? _value.listPostStatus
          : listPostStatus // ignore: cast_nullable_to_non_nullable
              as ListPostStatus,
      deletePostStatus: null == deletePostStatus
          ? _value.deletePostStatus
          : deletePostStatus // ignore: cast_nullable_to_non_nullable
              as DeletePostStatus,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as UpdateStatus,
      postStatus: null == postStatus
          ? _value.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      specificPost: null == specificPost
          ? _value.specificPost
          : specificPost // ignore: cast_nullable_to_non_nullable
              as PostModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListPostStateImpl implements _ListPostState {
  _$ListPostStateImpl(
      {required final List<PostModel> post,
      required final List<CommentModel> specificComment,
      required this.listPostStatus,
      required this.deletePostStatus,
      required this.updateStatus,
      required this.postStatus,
      required this.specificPost})
      : _post = post,
        _specificComment = specificComment;

  factory _$ListPostStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListPostStateImplFromJson(json);

  final List<PostModel> _post;
  @override
  List<PostModel> get post {
    if (_post is EqualUnmodifiableListView) return _post;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_post);
  }

  final List<CommentModel> _specificComment;
  @override
  List<CommentModel> get specificComment {
    if (_specificComment is EqualUnmodifiableListView) return _specificComment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specificComment);
  }

  @override
  final ListPostStatus listPostStatus;
  @override
  final DeletePostStatus deletePostStatus;
  @override
  final UpdateStatus updateStatus;
  @override
  final PostStatus postStatus;
  @override
  final PostModel specificPost;

  @override
  String toString() {
    return 'ListPostState(post: $post, specificComment: $specificComment, listPostStatus: $listPostStatus, deletePostStatus: $deletePostStatus, updateStatus: $updateStatus, postStatus: $postStatus, specificPost: $specificPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListPostStateImpl &&
            const DeepCollectionEquality().equals(other._post, _post) &&
            const DeepCollectionEquality()
                .equals(other._specificComment, _specificComment) &&
            (identical(other.listPostStatus, listPostStatus) ||
                other.listPostStatus == listPostStatus) &&
            (identical(other.deletePostStatus, deletePostStatus) ||
                other.deletePostStatus == deletePostStatus) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.postStatus, postStatus) ||
                other.postStatus == postStatus) &&
            (identical(other.specificPost, specificPost) ||
                other.specificPost == specificPost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_post),
      const DeepCollectionEquality().hash(_specificComment),
      listPostStatus,
      deletePostStatus,
      updateStatus,
      postStatus,
      specificPost);

  /// Create a copy of ListPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListPostStateImplCopyWith<_$ListPostStateImpl> get copyWith =>
      __$$ListPostStateImplCopyWithImpl<_$ListPostStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListPostStateImplToJson(
      this,
    );
  }
}

abstract class _ListPostState implements ListPostState {
  factory _ListPostState(
      {required final List<PostModel> post,
      required final List<CommentModel> specificComment,
      required final ListPostStatus listPostStatus,
      required final DeletePostStatus deletePostStatus,
      required final UpdateStatus updateStatus,
      required final PostStatus postStatus,
      required final PostModel specificPost}) = _$ListPostStateImpl;

  factory _ListPostState.fromJson(Map<String, dynamic> json) =
      _$ListPostStateImpl.fromJson;

  @override
  List<PostModel> get post;
  @override
  List<CommentModel> get specificComment;
  @override
  ListPostStatus get listPostStatus;
  @override
  DeletePostStatus get deletePostStatus;
  @override
  UpdateStatus get updateStatus;
  @override
  PostStatus get postStatus;
  @override
  PostModel get specificPost;

  /// Create a copy of ListPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListPostStateImplCopyWith<_$ListPostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListPostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListPost,
    required TResult Function(String title, String body, int userId) sentPost,
    required TResult Function(int postId) deletePost,
    required TResult Function(String title, String body, int userId, int postId)
        updatePost,
    required TResult Function(int id) specificPost,
    required TResult Function(int postId) getSpecificComment,
    required TResult Function(PostModel dummyData) postDummyData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListPost,
    TResult? Function(String title, String body, int userId)? sentPost,
    TResult? Function(int postId)? deletePost,
    TResult? Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult? Function(int id)? specificPost,
    TResult? Function(int postId)? getSpecificComment,
    TResult? Function(PostModel dummyData)? postDummyData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListPost,
    TResult Function(String title, String body, int userId)? sentPost,
    TResult Function(int postId)? deletePost,
    TResult Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult Function(int id)? specificPost,
    TResult Function(int postId)? getSpecificComment,
    TResult Function(PostModel dummyData)? postDummyData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListPost value) fetchListPost,
    required TResult Function(SentPost value) sentPost,
    required TResult Function(DeletePost value) deletePost,
    required TResult Function(UpdatePost value) updatePost,
    required TResult Function(GetSpecificPost value) specificPost,
    required TResult Function(GetSpecificComment value) getSpecificComment,
    required TResult Function(PostDummyData value) postDummyData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListPost value)? fetchListPost,
    TResult? Function(SentPost value)? sentPost,
    TResult? Function(DeletePost value)? deletePost,
    TResult? Function(UpdatePost value)? updatePost,
    TResult? Function(GetSpecificPost value)? specificPost,
    TResult? Function(GetSpecificComment value)? getSpecificComment,
    TResult? Function(PostDummyData value)? postDummyData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListPost value)? fetchListPost,
    TResult Function(SentPost value)? sentPost,
    TResult Function(DeletePost value)? deletePost,
    TResult Function(UpdatePost value)? updatePost,
    TResult Function(GetSpecificPost value)? specificPost,
    TResult Function(GetSpecificComment value)? getSpecificComment,
    TResult Function(PostDummyData value)? postDummyData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPostEventCopyWith<$Res> {
  factory $ListPostEventCopyWith(
          ListPostEvent value, $Res Function(ListPostEvent) then) =
      _$ListPostEventCopyWithImpl<$Res, ListPostEvent>;
}

/// @nodoc
class _$ListPostEventCopyWithImpl<$Res, $Val extends ListPostEvent>
    implements $ListPostEventCopyWith<$Res> {
  _$ListPostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchListPostImplCopyWith<$Res> {
  factory _$$FetchListPostImplCopyWith(
          _$FetchListPostImpl value, $Res Function(_$FetchListPostImpl) then) =
      __$$FetchListPostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchListPostImplCopyWithImpl<$Res>
    extends _$ListPostEventCopyWithImpl<$Res, _$FetchListPostImpl>
    implements _$$FetchListPostImplCopyWith<$Res> {
  __$$FetchListPostImplCopyWithImpl(
      _$FetchListPostImpl _value, $Res Function(_$FetchListPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchListPostImpl implements FetchListPost {
  const _$FetchListPostImpl();

  @override
  String toString() {
    return 'ListPostEvent.fetchListPost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchListPostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListPost,
    required TResult Function(String title, String body, int userId) sentPost,
    required TResult Function(int postId) deletePost,
    required TResult Function(String title, String body, int userId, int postId)
        updatePost,
    required TResult Function(int id) specificPost,
    required TResult Function(int postId) getSpecificComment,
    required TResult Function(PostModel dummyData) postDummyData,
  }) {
    return fetchListPost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListPost,
    TResult? Function(String title, String body, int userId)? sentPost,
    TResult? Function(int postId)? deletePost,
    TResult? Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult? Function(int id)? specificPost,
    TResult? Function(int postId)? getSpecificComment,
    TResult? Function(PostModel dummyData)? postDummyData,
  }) {
    return fetchListPost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListPost,
    TResult Function(String title, String body, int userId)? sentPost,
    TResult Function(int postId)? deletePost,
    TResult Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult Function(int id)? specificPost,
    TResult Function(int postId)? getSpecificComment,
    TResult Function(PostModel dummyData)? postDummyData,
    required TResult orElse(),
  }) {
    if (fetchListPost != null) {
      return fetchListPost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListPost value) fetchListPost,
    required TResult Function(SentPost value) sentPost,
    required TResult Function(DeletePost value) deletePost,
    required TResult Function(UpdatePost value) updatePost,
    required TResult Function(GetSpecificPost value) specificPost,
    required TResult Function(GetSpecificComment value) getSpecificComment,
    required TResult Function(PostDummyData value) postDummyData,
  }) {
    return fetchListPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListPost value)? fetchListPost,
    TResult? Function(SentPost value)? sentPost,
    TResult? Function(DeletePost value)? deletePost,
    TResult? Function(UpdatePost value)? updatePost,
    TResult? Function(GetSpecificPost value)? specificPost,
    TResult? Function(GetSpecificComment value)? getSpecificComment,
    TResult? Function(PostDummyData value)? postDummyData,
  }) {
    return fetchListPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListPost value)? fetchListPost,
    TResult Function(SentPost value)? sentPost,
    TResult Function(DeletePost value)? deletePost,
    TResult Function(UpdatePost value)? updatePost,
    TResult Function(GetSpecificPost value)? specificPost,
    TResult Function(GetSpecificComment value)? getSpecificComment,
    TResult Function(PostDummyData value)? postDummyData,
    required TResult orElse(),
  }) {
    if (fetchListPost != null) {
      return fetchListPost(this);
    }
    return orElse();
  }
}

abstract class FetchListPost implements ListPostEvent {
  const factory FetchListPost() = _$FetchListPostImpl;
}

/// @nodoc
abstract class _$$SentPostImplCopyWith<$Res> {
  factory _$$SentPostImplCopyWith(
          _$SentPostImpl value, $Res Function(_$SentPostImpl) then) =
      __$$SentPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String body, int userId});
}

/// @nodoc
class __$$SentPostImplCopyWithImpl<$Res>
    extends _$ListPostEventCopyWithImpl<$Res, _$SentPostImpl>
    implements _$$SentPostImplCopyWith<$Res> {
  __$$SentPostImplCopyWithImpl(
      _$SentPostImpl _value, $Res Function(_$SentPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? userId = null,
  }) {
    return _then(_$SentPostImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SentPostImpl implements SentPost {
  const _$SentPostImpl(
      {required this.title, required this.body, required this.userId});

  @override
  final String title;
  @override
  final String body;
  @override
  final int userId;

  @override
  String toString() {
    return 'ListPostEvent.sentPost(title: $title, body: $body, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentPostImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body, userId);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentPostImplCopyWith<_$SentPostImpl> get copyWith =>
      __$$SentPostImplCopyWithImpl<_$SentPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListPost,
    required TResult Function(String title, String body, int userId) sentPost,
    required TResult Function(int postId) deletePost,
    required TResult Function(String title, String body, int userId, int postId)
        updatePost,
    required TResult Function(int id) specificPost,
    required TResult Function(int postId) getSpecificComment,
    required TResult Function(PostModel dummyData) postDummyData,
  }) {
    return sentPost(title, body, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListPost,
    TResult? Function(String title, String body, int userId)? sentPost,
    TResult? Function(int postId)? deletePost,
    TResult? Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult? Function(int id)? specificPost,
    TResult? Function(int postId)? getSpecificComment,
    TResult? Function(PostModel dummyData)? postDummyData,
  }) {
    return sentPost?.call(title, body, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListPost,
    TResult Function(String title, String body, int userId)? sentPost,
    TResult Function(int postId)? deletePost,
    TResult Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult Function(int id)? specificPost,
    TResult Function(int postId)? getSpecificComment,
    TResult Function(PostModel dummyData)? postDummyData,
    required TResult orElse(),
  }) {
    if (sentPost != null) {
      return sentPost(title, body, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListPost value) fetchListPost,
    required TResult Function(SentPost value) sentPost,
    required TResult Function(DeletePost value) deletePost,
    required TResult Function(UpdatePost value) updatePost,
    required TResult Function(GetSpecificPost value) specificPost,
    required TResult Function(GetSpecificComment value) getSpecificComment,
    required TResult Function(PostDummyData value) postDummyData,
  }) {
    return sentPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListPost value)? fetchListPost,
    TResult? Function(SentPost value)? sentPost,
    TResult? Function(DeletePost value)? deletePost,
    TResult? Function(UpdatePost value)? updatePost,
    TResult? Function(GetSpecificPost value)? specificPost,
    TResult? Function(GetSpecificComment value)? getSpecificComment,
    TResult? Function(PostDummyData value)? postDummyData,
  }) {
    return sentPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListPost value)? fetchListPost,
    TResult Function(SentPost value)? sentPost,
    TResult Function(DeletePost value)? deletePost,
    TResult Function(UpdatePost value)? updatePost,
    TResult Function(GetSpecificPost value)? specificPost,
    TResult Function(GetSpecificComment value)? getSpecificComment,
    TResult Function(PostDummyData value)? postDummyData,
    required TResult orElse(),
  }) {
    if (sentPost != null) {
      return sentPost(this);
    }
    return orElse();
  }
}

abstract class SentPost implements ListPostEvent {
  const factory SentPost(
      {required final String title,
      required final String body,
      required final int userId}) = _$SentPostImpl;

  String get title;
  String get body;
  int get userId;

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentPostImplCopyWith<_$SentPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePostImplCopyWith<$Res> {
  factory _$$DeletePostImplCopyWith(
          _$DeletePostImpl value, $Res Function(_$DeletePostImpl) then) =
      __$$DeletePostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$DeletePostImplCopyWithImpl<$Res>
    extends _$ListPostEventCopyWithImpl<$Res, _$DeletePostImpl>
    implements _$$DeletePostImplCopyWith<$Res> {
  __$$DeletePostImplCopyWithImpl(
      _$DeletePostImpl _value, $Res Function(_$DeletePostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$DeletePostImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletePostImpl implements DeletePost {
  const _$DeletePostImpl({required this.postId});

  @override
  final int postId;

  @override
  String toString() {
    return 'ListPostEvent.deletePost(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePostImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePostImplCopyWith<_$DeletePostImpl> get copyWith =>
      __$$DeletePostImplCopyWithImpl<_$DeletePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListPost,
    required TResult Function(String title, String body, int userId) sentPost,
    required TResult Function(int postId) deletePost,
    required TResult Function(String title, String body, int userId, int postId)
        updatePost,
    required TResult Function(int id) specificPost,
    required TResult Function(int postId) getSpecificComment,
    required TResult Function(PostModel dummyData) postDummyData,
  }) {
    return deletePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListPost,
    TResult? Function(String title, String body, int userId)? sentPost,
    TResult? Function(int postId)? deletePost,
    TResult? Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult? Function(int id)? specificPost,
    TResult? Function(int postId)? getSpecificComment,
    TResult? Function(PostModel dummyData)? postDummyData,
  }) {
    return deletePost?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListPost,
    TResult Function(String title, String body, int userId)? sentPost,
    TResult Function(int postId)? deletePost,
    TResult Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult Function(int id)? specificPost,
    TResult Function(int postId)? getSpecificComment,
    TResult Function(PostModel dummyData)? postDummyData,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListPost value) fetchListPost,
    required TResult Function(SentPost value) sentPost,
    required TResult Function(DeletePost value) deletePost,
    required TResult Function(UpdatePost value) updatePost,
    required TResult Function(GetSpecificPost value) specificPost,
    required TResult Function(GetSpecificComment value) getSpecificComment,
    required TResult Function(PostDummyData value) postDummyData,
  }) {
    return deletePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListPost value)? fetchListPost,
    TResult? Function(SentPost value)? sentPost,
    TResult? Function(DeletePost value)? deletePost,
    TResult? Function(UpdatePost value)? updatePost,
    TResult? Function(GetSpecificPost value)? specificPost,
    TResult? Function(GetSpecificComment value)? getSpecificComment,
    TResult? Function(PostDummyData value)? postDummyData,
  }) {
    return deletePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListPost value)? fetchListPost,
    TResult Function(SentPost value)? sentPost,
    TResult Function(DeletePost value)? deletePost,
    TResult Function(UpdatePost value)? updatePost,
    TResult Function(GetSpecificPost value)? specificPost,
    TResult Function(GetSpecificComment value)? getSpecificComment,
    TResult Function(PostDummyData value)? postDummyData,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(this);
    }
    return orElse();
  }
}

abstract class DeletePost implements ListPostEvent {
  const factory DeletePost({required final int postId}) = _$DeletePostImpl;

  int get postId;

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePostImplCopyWith<_$DeletePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePostImplCopyWith<$Res> {
  factory _$$UpdatePostImplCopyWith(
          _$UpdatePostImpl value, $Res Function(_$UpdatePostImpl) then) =
      __$$UpdatePostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String body, int userId, int postId});
}

/// @nodoc
class __$$UpdatePostImplCopyWithImpl<$Res>
    extends _$ListPostEventCopyWithImpl<$Res, _$UpdatePostImpl>
    implements _$$UpdatePostImplCopyWith<$Res> {
  __$$UpdatePostImplCopyWithImpl(
      _$UpdatePostImpl _value, $Res Function(_$UpdatePostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? userId = null,
    Object? postId = null,
  }) {
    return _then(_$UpdatePostImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatePostImpl implements UpdatePost {
  const _$UpdatePostImpl(
      {required this.title,
      required this.body,
      required this.userId,
      required this.postId});

  @override
  final String title;
  @override
  final String body;
  @override
  final int userId;
  @override
  final int postId;

  @override
  String toString() {
    return 'ListPostEvent.updatePost(title: $title, body: $body, userId: $userId, postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePostImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body, userId, postId);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePostImplCopyWith<_$UpdatePostImpl> get copyWith =>
      __$$UpdatePostImplCopyWithImpl<_$UpdatePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListPost,
    required TResult Function(String title, String body, int userId) sentPost,
    required TResult Function(int postId) deletePost,
    required TResult Function(String title, String body, int userId, int postId)
        updatePost,
    required TResult Function(int id) specificPost,
    required TResult Function(int postId) getSpecificComment,
    required TResult Function(PostModel dummyData) postDummyData,
  }) {
    return updatePost(title, body, userId, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListPost,
    TResult? Function(String title, String body, int userId)? sentPost,
    TResult? Function(int postId)? deletePost,
    TResult? Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult? Function(int id)? specificPost,
    TResult? Function(int postId)? getSpecificComment,
    TResult? Function(PostModel dummyData)? postDummyData,
  }) {
    return updatePost?.call(title, body, userId, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListPost,
    TResult Function(String title, String body, int userId)? sentPost,
    TResult Function(int postId)? deletePost,
    TResult Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult Function(int id)? specificPost,
    TResult Function(int postId)? getSpecificComment,
    TResult Function(PostModel dummyData)? postDummyData,
    required TResult orElse(),
  }) {
    if (updatePost != null) {
      return updatePost(title, body, userId, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListPost value) fetchListPost,
    required TResult Function(SentPost value) sentPost,
    required TResult Function(DeletePost value) deletePost,
    required TResult Function(UpdatePost value) updatePost,
    required TResult Function(GetSpecificPost value) specificPost,
    required TResult Function(GetSpecificComment value) getSpecificComment,
    required TResult Function(PostDummyData value) postDummyData,
  }) {
    return updatePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListPost value)? fetchListPost,
    TResult? Function(SentPost value)? sentPost,
    TResult? Function(DeletePost value)? deletePost,
    TResult? Function(UpdatePost value)? updatePost,
    TResult? Function(GetSpecificPost value)? specificPost,
    TResult? Function(GetSpecificComment value)? getSpecificComment,
    TResult? Function(PostDummyData value)? postDummyData,
  }) {
    return updatePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListPost value)? fetchListPost,
    TResult Function(SentPost value)? sentPost,
    TResult Function(DeletePost value)? deletePost,
    TResult Function(UpdatePost value)? updatePost,
    TResult Function(GetSpecificPost value)? specificPost,
    TResult Function(GetSpecificComment value)? getSpecificComment,
    TResult Function(PostDummyData value)? postDummyData,
    required TResult orElse(),
  }) {
    if (updatePost != null) {
      return updatePost(this);
    }
    return orElse();
  }
}

abstract class UpdatePost implements ListPostEvent {
  const factory UpdatePost(
      {required final String title,
      required final String body,
      required final int userId,
      required final int postId}) = _$UpdatePostImpl;

  String get title;
  String get body;
  int get userId;
  int get postId;

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePostImplCopyWith<_$UpdatePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSpecificPostImplCopyWith<$Res> {
  factory _$$GetSpecificPostImplCopyWith(_$GetSpecificPostImpl value,
          $Res Function(_$GetSpecificPostImpl) then) =
      __$$GetSpecificPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetSpecificPostImplCopyWithImpl<$Res>
    extends _$ListPostEventCopyWithImpl<$Res, _$GetSpecificPostImpl>
    implements _$$GetSpecificPostImplCopyWith<$Res> {
  __$$GetSpecificPostImplCopyWithImpl(
      _$GetSpecificPostImpl _value, $Res Function(_$GetSpecificPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetSpecificPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSpecificPostImpl implements GetSpecificPost {
  const _$GetSpecificPostImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ListPostEvent.specificPost(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecificPostImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecificPostImplCopyWith<_$GetSpecificPostImpl> get copyWith =>
      __$$GetSpecificPostImplCopyWithImpl<_$GetSpecificPostImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListPost,
    required TResult Function(String title, String body, int userId) sentPost,
    required TResult Function(int postId) deletePost,
    required TResult Function(String title, String body, int userId, int postId)
        updatePost,
    required TResult Function(int id) specificPost,
    required TResult Function(int postId) getSpecificComment,
    required TResult Function(PostModel dummyData) postDummyData,
  }) {
    return specificPost(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListPost,
    TResult? Function(String title, String body, int userId)? sentPost,
    TResult? Function(int postId)? deletePost,
    TResult? Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult? Function(int id)? specificPost,
    TResult? Function(int postId)? getSpecificComment,
    TResult? Function(PostModel dummyData)? postDummyData,
  }) {
    return specificPost?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListPost,
    TResult Function(String title, String body, int userId)? sentPost,
    TResult Function(int postId)? deletePost,
    TResult Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult Function(int id)? specificPost,
    TResult Function(int postId)? getSpecificComment,
    TResult Function(PostModel dummyData)? postDummyData,
    required TResult orElse(),
  }) {
    if (specificPost != null) {
      return specificPost(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListPost value) fetchListPost,
    required TResult Function(SentPost value) sentPost,
    required TResult Function(DeletePost value) deletePost,
    required TResult Function(UpdatePost value) updatePost,
    required TResult Function(GetSpecificPost value) specificPost,
    required TResult Function(GetSpecificComment value) getSpecificComment,
    required TResult Function(PostDummyData value) postDummyData,
  }) {
    return specificPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListPost value)? fetchListPost,
    TResult? Function(SentPost value)? sentPost,
    TResult? Function(DeletePost value)? deletePost,
    TResult? Function(UpdatePost value)? updatePost,
    TResult? Function(GetSpecificPost value)? specificPost,
    TResult? Function(GetSpecificComment value)? getSpecificComment,
    TResult? Function(PostDummyData value)? postDummyData,
  }) {
    return specificPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListPost value)? fetchListPost,
    TResult Function(SentPost value)? sentPost,
    TResult Function(DeletePost value)? deletePost,
    TResult Function(UpdatePost value)? updatePost,
    TResult Function(GetSpecificPost value)? specificPost,
    TResult Function(GetSpecificComment value)? getSpecificComment,
    TResult Function(PostDummyData value)? postDummyData,
    required TResult orElse(),
  }) {
    if (specificPost != null) {
      return specificPost(this);
    }
    return orElse();
  }
}

abstract class GetSpecificPost implements ListPostEvent {
  const factory GetSpecificPost({required final int id}) =
      _$GetSpecificPostImpl;

  int get id;

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSpecificPostImplCopyWith<_$GetSpecificPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSpecificCommentImplCopyWith<$Res> {
  factory _$$GetSpecificCommentImplCopyWith(_$GetSpecificCommentImpl value,
          $Res Function(_$GetSpecificCommentImpl) then) =
      __$$GetSpecificCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$GetSpecificCommentImplCopyWithImpl<$Res>
    extends _$ListPostEventCopyWithImpl<$Res, _$GetSpecificCommentImpl>
    implements _$$GetSpecificCommentImplCopyWith<$Res> {
  __$$GetSpecificCommentImplCopyWithImpl(_$GetSpecificCommentImpl _value,
      $Res Function(_$GetSpecificCommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$GetSpecificCommentImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSpecificCommentImpl implements GetSpecificComment {
  const _$GetSpecificCommentImpl({required this.postId});

  @override
  final int postId;

  @override
  String toString() {
    return 'ListPostEvent.getSpecificComment(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecificCommentImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecificCommentImplCopyWith<_$GetSpecificCommentImpl> get copyWith =>
      __$$GetSpecificCommentImplCopyWithImpl<_$GetSpecificCommentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListPost,
    required TResult Function(String title, String body, int userId) sentPost,
    required TResult Function(int postId) deletePost,
    required TResult Function(String title, String body, int userId, int postId)
        updatePost,
    required TResult Function(int id) specificPost,
    required TResult Function(int postId) getSpecificComment,
    required TResult Function(PostModel dummyData) postDummyData,
  }) {
    return getSpecificComment(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListPost,
    TResult? Function(String title, String body, int userId)? sentPost,
    TResult? Function(int postId)? deletePost,
    TResult? Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult? Function(int id)? specificPost,
    TResult? Function(int postId)? getSpecificComment,
    TResult? Function(PostModel dummyData)? postDummyData,
  }) {
    return getSpecificComment?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListPost,
    TResult Function(String title, String body, int userId)? sentPost,
    TResult Function(int postId)? deletePost,
    TResult Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult Function(int id)? specificPost,
    TResult Function(int postId)? getSpecificComment,
    TResult Function(PostModel dummyData)? postDummyData,
    required TResult orElse(),
  }) {
    if (getSpecificComment != null) {
      return getSpecificComment(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListPost value) fetchListPost,
    required TResult Function(SentPost value) sentPost,
    required TResult Function(DeletePost value) deletePost,
    required TResult Function(UpdatePost value) updatePost,
    required TResult Function(GetSpecificPost value) specificPost,
    required TResult Function(GetSpecificComment value) getSpecificComment,
    required TResult Function(PostDummyData value) postDummyData,
  }) {
    return getSpecificComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListPost value)? fetchListPost,
    TResult? Function(SentPost value)? sentPost,
    TResult? Function(DeletePost value)? deletePost,
    TResult? Function(UpdatePost value)? updatePost,
    TResult? Function(GetSpecificPost value)? specificPost,
    TResult? Function(GetSpecificComment value)? getSpecificComment,
    TResult? Function(PostDummyData value)? postDummyData,
  }) {
    return getSpecificComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListPost value)? fetchListPost,
    TResult Function(SentPost value)? sentPost,
    TResult Function(DeletePost value)? deletePost,
    TResult Function(UpdatePost value)? updatePost,
    TResult Function(GetSpecificPost value)? specificPost,
    TResult Function(GetSpecificComment value)? getSpecificComment,
    TResult Function(PostDummyData value)? postDummyData,
    required TResult orElse(),
  }) {
    if (getSpecificComment != null) {
      return getSpecificComment(this);
    }
    return orElse();
  }
}

abstract class GetSpecificComment implements ListPostEvent {
  const factory GetSpecificComment({required final int postId}) =
      _$GetSpecificCommentImpl;

  int get postId;

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSpecificCommentImplCopyWith<_$GetSpecificCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostDummyDataImplCopyWith<$Res> {
  factory _$$PostDummyDataImplCopyWith(
          _$PostDummyDataImpl value, $Res Function(_$PostDummyDataImpl) then) =
      __$$PostDummyDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostModel dummyData});

  $PostModelCopyWith<$Res> get dummyData;
}

/// @nodoc
class __$$PostDummyDataImplCopyWithImpl<$Res>
    extends _$ListPostEventCopyWithImpl<$Res, _$PostDummyDataImpl>
    implements _$$PostDummyDataImplCopyWith<$Res> {
  __$$PostDummyDataImplCopyWithImpl(
      _$PostDummyDataImpl _value, $Res Function(_$PostDummyDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dummyData = null,
  }) {
    return _then(_$PostDummyDataImpl(
      dummyData: null == dummyData
          ? _value.dummyData
          : dummyData // ignore: cast_nullable_to_non_nullable
              as PostModel,
    ));
  }

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostModelCopyWith<$Res> get dummyData {
    return $PostModelCopyWith<$Res>(_value.dummyData, (value) {
      return _then(_value.copyWith(dummyData: value));
    });
  }
}

/// @nodoc

class _$PostDummyDataImpl implements PostDummyData {
  const _$PostDummyDataImpl({required this.dummyData});

  @override
  final PostModel dummyData;

  @override
  String toString() {
    return 'ListPostEvent.postDummyData(dummyData: $dummyData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDummyDataImpl &&
            (identical(other.dummyData, dummyData) ||
                other.dummyData == dummyData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dummyData);

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDummyDataImplCopyWith<_$PostDummyDataImpl> get copyWith =>
      __$$PostDummyDataImplCopyWithImpl<_$PostDummyDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListPost,
    required TResult Function(String title, String body, int userId) sentPost,
    required TResult Function(int postId) deletePost,
    required TResult Function(String title, String body, int userId, int postId)
        updatePost,
    required TResult Function(int id) specificPost,
    required TResult Function(int postId) getSpecificComment,
    required TResult Function(PostModel dummyData) postDummyData,
  }) {
    return postDummyData(dummyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListPost,
    TResult? Function(String title, String body, int userId)? sentPost,
    TResult? Function(int postId)? deletePost,
    TResult? Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult? Function(int id)? specificPost,
    TResult? Function(int postId)? getSpecificComment,
    TResult? Function(PostModel dummyData)? postDummyData,
  }) {
    return postDummyData?.call(dummyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListPost,
    TResult Function(String title, String body, int userId)? sentPost,
    TResult Function(int postId)? deletePost,
    TResult Function(String title, String body, int userId, int postId)?
        updatePost,
    TResult Function(int id)? specificPost,
    TResult Function(int postId)? getSpecificComment,
    TResult Function(PostModel dummyData)? postDummyData,
    required TResult orElse(),
  }) {
    if (postDummyData != null) {
      return postDummyData(dummyData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListPost value) fetchListPost,
    required TResult Function(SentPost value) sentPost,
    required TResult Function(DeletePost value) deletePost,
    required TResult Function(UpdatePost value) updatePost,
    required TResult Function(GetSpecificPost value) specificPost,
    required TResult Function(GetSpecificComment value) getSpecificComment,
    required TResult Function(PostDummyData value) postDummyData,
  }) {
    return postDummyData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListPost value)? fetchListPost,
    TResult? Function(SentPost value)? sentPost,
    TResult? Function(DeletePost value)? deletePost,
    TResult? Function(UpdatePost value)? updatePost,
    TResult? Function(GetSpecificPost value)? specificPost,
    TResult? Function(GetSpecificComment value)? getSpecificComment,
    TResult? Function(PostDummyData value)? postDummyData,
  }) {
    return postDummyData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListPost value)? fetchListPost,
    TResult Function(SentPost value)? sentPost,
    TResult Function(DeletePost value)? deletePost,
    TResult Function(UpdatePost value)? updatePost,
    TResult Function(GetSpecificPost value)? specificPost,
    TResult Function(GetSpecificComment value)? getSpecificComment,
    TResult Function(PostDummyData value)? postDummyData,
    required TResult orElse(),
  }) {
    if (postDummyData != null) {
      return postDummyData(this);
    }
    return orElse();
  }
}

abstract class PostDummyData implements ListPostEvent {
  const factory PostDummyData({required final PostModel dummyData}) =
      _$PostDummyDataImpl;

  PostModel get dummyData;

  /// Create a copy of ListPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDummyDataImplCopyWith<_$PostDummyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
