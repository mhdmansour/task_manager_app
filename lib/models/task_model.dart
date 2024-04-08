import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskItem with _$TaskItem {
  factory TaskItem({
    @JsonKey(name: "_id") required String id,
    required String title,
    required String description,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
    @JsonKey(name: "is_completed") required bool isCompleted,
  }) = _TaskItem;

  /*factory TaskItem.fromJson(Map<String, dynamic> json) =>
      _$TaskItemFromJson(json);*/
  factory TaskItem.fromJson(Map<String, dynamic> json){
    return TaskItem(
      id: json['id'] ?? "123",
      title: json['title'],
      description: json['description'],
      createdAt: json['createdAt'] ?? DateTime.now().toString(),
      updatedAt: json['updatedAt'] ?? DateTime.now().toString(),
      isCompleted: json['isCompleted'] ?? false,

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isCompleted': isCompleted,
    };
  }
}