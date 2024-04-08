// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateNoteRequest _$$_UpdateNoteRequestFromJson(Map<String, dynamic> json) =>
    _$_UpdateNoteRequest(
      title: json['title'] as String?,
      description: json['description'] as String?,
      isCompleted: json['isCompleted'] as bool?,
    );

Map<String, dynamic> _$$_UpdateNoteRequestToJson(
        _$_UpdateNoteRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
    };
