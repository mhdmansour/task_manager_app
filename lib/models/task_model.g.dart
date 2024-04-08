// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskItem _$$_TaskItemFromJson(Map<String, dynamic> json) => _$_TaskItem(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      isCompleted: json['is_completed'] as bool,
    );

Map<String, dynamic> _$$_TaskItemToJson(_$_TaskItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_completed': instance.isCompleted,
    };
