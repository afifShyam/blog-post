// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_post_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListPostStateImpl _$$ListPostStateImplFromJson(Map<String, dynamic> json) =>
    _$ListPostStateImpl(
      post: (json['post'] as List<dynamic>)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      specificComment: (json['specificComment'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      listPostStatus:
          $enumDecode(_$ListPostStatusEnumMap, json['listPostStatus']),
      deletePostStatus:
          $enumDecode(_$DeletePostStatusEnumMap, json['deletePostStatus']),
      updateStatus: $enumDecode(_$UpdateStatusEnumMap, json['updateStatus']),
      postStatus: $enumDecode(_$PostStatusEnumMap, json['postStatus']),
      specificPost:
          PostModel.fromJson(json['specificPost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListPostStateImplToJson(_$ListPostStateImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
      'specificComment': instance.specificComment,
      'listPostStatus': _$ListPostStatusEnumMap[instance.listPostStatus]!,
      'deletePostStatus': _$DeletePostStatusEnumMap[instance.deletePostStatus]!,
      'updateStatus': _$UpdateStatusEnumMap[instance.updateStatus]!,
      'postStatus': _$PostStatusEnumMap[instance.postStatus]!,
      'specificPost': instance.specificPost,
    };

const _$ListPostStatusEnumMap = {
  ListPostStatus.initial: 'initial',
  ListPostStatus.loading: 'loading',
  ListPostStatus.completed: 'completed',
  ListPostStatus.error: 'error',
};

const _$DeletePostStatusEnumMap = {
  DeletePostStatus.initial: 'initial',
  DeletePostStatus.loading: 'loading',
  DeletePostStatus.completed: 'completed',
  DeletePostStatus.error: 'error',
};

const _$UpdateStatusEnumMap = {
  UpdateStatus.initial: 'initial',
  UpdateStatus.completed: 'completed',
  UpdateStatus.error: 'error',
};

const _$PostStatusEnumMap = {
  PostStatus.initial: 'initial',
  PostStatus.completed: 'completed',
  PostStatus.error: 'error',
};
