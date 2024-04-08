// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_note_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateNoteRequest _$UpdateNoteRequestFromJson(Map<String, dynamic> json) {
  return _UpdateNoteRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateNoteRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateNoteRequestCopyWith<UpdateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNoteRequestCopyWith<$Res> {
  factory $UpdateNoteRequestCopyWith(
          UpdateNoteRequest value, $Res Function(UpdateNoteRequest) then) =
      _$UpdateNoteRequestCopyWithImpl<$Res, UpdateNoteRequest>;
  @useResult
  $Res call({String? title, String? description, bool? isCompleted});
}

/// @nodoc
class _$UpdateNoteRequestCopyWithImpl<$Res, $Val extends UpdateNoteRequest>
    implements $UpdateNoteRequestCopyWith<$Res> {
  _$UpdateNoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateNoteRequestCopyWith<$Res>
    implements $UpdateNoteRequestCopyWith<$Res> {
  factory _$$_UpdateNoteRequestCopyWith(_$_UpdateNoteRequest value,
          $Res Function(_$_UpdateNoteRequest) then) =
      __$$_UpdateNoteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, bool? isCompleted});
}

/// @nodoc
class __$$_UpdateNoteRequestCopyWithImpl<$Res>
    extends _$UpdateNoteRequestCopyWithImpl<$Res, _$_UpdateNoteRequest>
    implements _$$_UpdateNoteRequestCopyWith<$Res> {
  __$$_UpdateNoteRequestCopyWithImpl(
      _$_UpdateNoteRequest _value, $Res Function(_$_UpdateNoteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$_UpdateNoteRequest(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateNoteRequest implements _UpdateNoteRequest {
  _$_UpdateNoteRequest({this.title, this.description, this.isCompleted});

  factory _$_UpdateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateNoteRequestFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? isCompleted;

  @override
  String toString() {
    return 'UpdateNoteRequest(title: $title, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNoteRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateNoteRequestCopyWith<_$_UpdateNoteRequest> get copyWith =>
      __$$_UpdateNoteRequestCopyWithImpl<_$_UpdateNoteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateNoteRequestToJson(
      this,
    );
  }
}

abstract class _UpdateNoteRequest implements UpdateNoteRequest {
  factory _UpdateNoteRequest(
      {final String? title,
      final String? description,
      final bool? isCompleted}) = _$_UpdateNoteRequest;

  factory _UpdateNoteRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateNoteRequest.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateNoteRequestCopyWith<_$_UpdateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
