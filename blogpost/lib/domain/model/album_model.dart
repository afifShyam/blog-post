import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_model.freezed.dart';
part 'album_model.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  factory AlbumModel({
    required final int albumId,
    required final int id,
    required final String title,
    required final String url,
    required final String thumbnailUrl,
  }) = _AlbumModel;

  factory AlbumModel.initial() => AlbumModel(
        albumId: 0,
        id: 0,
        title: '',
        url: '',
        thumbnailUrl: '',
      );

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelFromJson(json);
}
