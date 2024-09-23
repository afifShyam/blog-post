// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SliderStateImpl _$$SliderStateImplFromJson(Map<String, dynamic> json) =>
    _$SliderStateImpl(
      status: $enumDecode(_$SliderStatusEnumMap, json['status']),
      value: (json['value'] as num).toDouble(),
      size: (json['size'] as num).toDouble(),
      colors: _colorFromJson((json['colors'] as num).toInt()),
    );

Map<String, dynamic> _$$SliderStateImplToJson(_$SliderStateImpl instance) =>
    <String, dynamic>{
      'status': _$SliderStatusEnumMap[instance.status]!,
      'value': instance.value,
      'size': instance.size,
      'colors': _colorToJson(instance.colors),
    };

const _$SliderStatusEnumMap = {
  SliderStatus.initial: 'initial',
  SliderStatus.loading: 'loading',
  SliderStatus.completed: 'completed',
  SliderStatus.error: 'error',
};
