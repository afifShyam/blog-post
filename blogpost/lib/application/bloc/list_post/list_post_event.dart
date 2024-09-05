part of 'list_post_bloc.dart';

@freezed
class ListPostEvent with _$ListPostEvent {
  const factory ListPostEvent.fetchListPost() = FetchListPost;
  const factory ListPostEvent.sentPost({
    required String title,
    required String body,
    required int userId,
  }) = SentPost;
  const factory ListPostEvent.deletePost({required int postId}) = DeletePost;
  const factory ListPostEvent.updatePost({
    required String title,
    required String body,
    required int userId,
    required int postId,
  }) = UpdatePost;
  const factory ListPostEvent.specificPost({required int id}) = GetSpecificPost;
  const factory ListPostEvent.getSpecificComment({required int postId}) =
      GetSpecificComment;
  const factory ListPostEvent.postDummyData({required PostModel dummyData}) =
      PostDummyData;
}
