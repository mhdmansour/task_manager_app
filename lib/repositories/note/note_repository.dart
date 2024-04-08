import 'package:dio/dio.dart';
import 'package:task_manager_app/models/api_response.dart';
import 'package:task_manager_app/models/models.dart';
import 'package:task_manager_app/models/requests/update_note_request.dart';
import 'package:task_manager_app/models/requests/create_note_request.dart';
import 'package:task_manager_app/models/note_model.dart';
import 'package:task_manager_app/models/app_response.dart';
import 'package:task_manager_app/repositories/core/endpoint.dart';
import 'package:task_manager_app/repositories/note/base_note_repository.dart';
import 'package:task_manager_app/utils/dio_client/dio_client.dart';

class NoteRepository extends BaseNoteRepository {
  NoteRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;

  @override
  Future<ApiResponse<TaskItem?>> create(CreateNoteRequest request) async {
    final response = await _dioClient.post(
      Endpoints.noteCreate,
      data: request.toJson(),
    );
    print("create");
    print(response);
    return ApiResponse<TaskItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? TaskItem.fromJson(json)
          : null,
    );
  }

  @override
  Future<ApiResponse<String?>> deleteSingle(String id) async {
    final response =
        await _dioClient.delete("${Endpoints.noteDeleteSingle}$id");

    return ApiResponse<String?>.fromJson(
      response.data,
      (json) => response.data['success'] && json != null ? json as String : null,
    );
  }

  @override
  Future<ApiResponse<List<TaskItem>?>> getMany({
    required int currentPage,
    int pageSize = 15,
  }) async {
    final response = await _dioClient.get(
      Endpoints.noteGetMany,
      queryParameters: {'page': currentPage, 'limit': pageSize},
    );
    print(response);
    return ApiResponse<List<TaskItem>?>.fromJson(response.data, (dynamic json) {
      if (json != null && response.data['success']) {
        return (json as List<dynamic>)
            .map((e) => TaskItem.fromJson(e))
            .toList();
      }
      return null;
    });
  }

  @override
  Future<AppResponse<NoteItem?>> getSingle(int id) async {
    final response = await _dioClient.get("${Endpoints.noteGetSingle}$id");

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }

  @override
  Future<ApiResponse<TaskItem?>> update(
    UpdateNoteRequest request,
    String id,
  ) async {
    final response = await _dioClient.put(
      "${Endpoints.noteUpdate}$id",
      data: request.toJson(),
    );

    return ApiResponse<TaskItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? TaskItem.fromJson(json)
          : null,
    );
  }
}
