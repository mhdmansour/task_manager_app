import 'package:task_manager_app/models/api_response.dart';
import 'package:task_manager_app/models/models.dart';
import 'package:task_manager_app/models/requests/create_note_request.dart';
import 'package:task_manager_app/models/requests/update_note_request.dart';

abstract class BaseNoteRepository {
  Future<ApiResponse<List<TaskItem>?>> getMany({
    required int currentPage,
    int pageSize = 15,
  });

  Future<ApiResponse<TaskItem?>> create(CreateNoteRequest request);

  Future<ApiResponse<TaskItem?>> update(UpdateNoteRequest request, String id);



  Future<ApiResponse<String?>> deleteSingle(String id);
}
