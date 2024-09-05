// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStateImpl _$$UserStateImplFromJson(Map<String, dynamic> json) =>
    _$UserStateImpl(
      userStatus: $enumDecode(_$UserStatusEnumMap, json['userStatus']),
      user: (json['user'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String,
    );

Map<String, dynamic> _$$UserStateImplToJson(_$UserStateImpl instance) =>
    <String, dynamic>{
      'userStatus': _$UserStatusEnumMap[instance.userStatus]!,
      'user': instance.user,
      'error': instance.error,
    };

const _$UserStatusEnumMap = {
  UserStatus.initial: 'initial',
  UserStatus.loading: 'loading',
  UserStatus.completed: 'completed',
  UserStatus.error: 'error',
};
