import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/colors.dart';




part 'create_note_request.freezed.dart';
part 'create_note_request.g.dart';

@freezed
class CreateNoteRequest with _$CreateNoteRequest {
  factory CreateNoteRequest({
    required String title,
    required String description,
    required bool isCompleted,

  }) = _CreateNoteRequest;

  factory CreateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateNoteRequestFromJson(json);

  factory CreateNoteRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};

    return CreateNoteRequest.fromJson(data);
  }
}
