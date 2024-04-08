part of 'add_note_bloc.dart';

@freezed
class AddNoteEvent with _$AddNoteEvent {
  const factory AddNoteEvent.create(CreateNoteRequest request) = Create;
  const factory AddNoteEvent.update(
    UpdateNoteRequest request,
    String id,
  ) = Update;
  const factory AddNoteEvent.delete(String id) = Delete;
  const factory AddNoteEvent.setSelectedNote(TaskItem? note) = SetSelectedNote;
}
