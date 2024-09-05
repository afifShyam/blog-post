import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  factory CommentModel({
    required int postId,
    required int id,
    required String name,
    required String email,
    required String body,
  }) = _CommentModel;

  factory CommentModel.initial() => CommentModel(
        postId: 0,
        id: 0,
        name: '',
        email: '',
        body: '',
      );

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
