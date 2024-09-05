part of 'list_post_bloc.dart';

enum ListPostStatus {
  initial,
  loading,
  completed,
  error,
}

enum DeletePostStatus {
  initial,
  loading,
  completed,
  error,
}

enum PostStatus {
  initial,
  completed,
  error,
}

enum UpdateStatus {
  initial,
  completed,
  error,
}

@freezed
class ListPostState with _$ListPostState {
  factory ListPostState({
    required final List<PostModel> post,
    required final List<CommentModel> specificComment,
    required final ListPostStatus listPostStatus,
    required final DeletePostStatus deletePostStatus,
    required final UpdateStatus updateStatus,
    required final PostStatus postStatus,
    required final PostModel specificPost,
  }) = _ListPostState;

  factory ListPostState.initial() => ListPostState(
        post: [],
        specificComment: [],
        listPostStatus: ListPostStatus.initial,
        deletePostStatus: DeletePostStatus.initial,
        postStatus: PostStatus.initial,
        updateStatus: UpdateStatus.initial,
        specificPost: PostModel.initial(),
      );

  factory ListPostState.fromJson(Map<String, dynamic> json) =>
      _$ListPostStateFromJson(json);
}
