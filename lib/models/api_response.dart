import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ApiResponse<T> extends Equatable {
  /// The boolean indicates the ApiResponse is success or failed
  final bool success;

  /// The message of ApiResponse description
  final String message;

  /// The ApiResponse data
  final T? items;
  final T? data;
  final int code;
  /// StatusCode added by response status code (Not from server)
  final int statusCode;

  /// statusMessage added by http response (Not from server)
  final String statusMessage;

  const ApiResponse._({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.code,
    required this.statusMessage,
    this.data,
    this.items,
  });

  factory ApiResponse({
    required bool success,
    required String message,
    required int code,
    int? statusCode,
    String? statusMessage,
    T? data,
    T? items,
  }) {
    return ApiResponse._(
      success: success,
      message: message,
      statusCode: statusCode ?? 200,
      statusMessage: statusMessage ?? "The request has succeeded.",
      data: data,
      code: code,
      items: items
    );
  }

  @override
  List<Object> get props {
    return [
      success,
      code,
      message,
      data ?? "",
      items ?? ""
    ];
  }

  factory ApiResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) {
    return _$ApiResponseFromJson(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
      Object? Function(T? value) toJsonT,
      ) {
    return _$ApiResponseToJson(this, toJsonT);
  }

  @override
  bool get stringify => true;
}
