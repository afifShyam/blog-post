import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    required final int userId,
    required final int id,
    required final String title,
    required final String body,
  }) = _PostModel;

  factory PostModel.initial() =>
      PostModel(userId: 0, id: 0, title: '', body: '');

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
