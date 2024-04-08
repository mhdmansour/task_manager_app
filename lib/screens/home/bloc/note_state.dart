part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const NoteState._();

  const factory NoteState({
    required NoteViewType viewType,
    required List<TaskItem> notes,
    required int page,
    required bool isLastPage,
    required DataStatus status,
    required String message,
  }) = _NoteState;

  factory NoteState.initial() {
    return const NoteState(
      viewType: NoteViewType.list,
      notes: [],
      page: 1,
      isLastPage: false,
      status: DataStatus.initial,
      message: '',
    );
  }

  bool get hasNotes => notes.isNotEmpty;


  factory NoteState.fromJson(Map<String, dynamic> json) {
    var tasks = <TaskItem>[];
    for (var item in json['tasks']) {
      tasks.add(TaskItem.fromJson(item));
    }
    return NoteState(
      viewType: NoteViewType.list,
      notes: tasks,
      page: 1,
      isLastPage: false,
      status: DataStatus.initial,
      message: '',
    );
  }

  Map<String, dynamic> toJson() {
    var jsonTaskList = <Map<String, dynamic>>[];
    for (var item in notes) {
      jsonTaskList.add(item.toJson());
    }
    return {
      'tasks': jsonTaskList,
    };
  }
}
