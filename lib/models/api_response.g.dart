// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponse<T>(
      success: json['success'] as bool,
      message: json['message'] as String,
      code: json['code'] as int,
      statusCode: json['statusCode'] as int?,
      statusMessage: json['statusMessage'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      items: _$nullableGenericFromJson(json['items'], fromJsonT),
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'items': _$nullableGenericToJson(instance.items, toJsonT),
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'code': instance.code,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
