class Endpoints {
  /// Current Api Version
  static const _apiVersion = "/v1";

  /// Note
  static const _baseNote = "$_apiVersion/todos";

  static const noteGetSingle = "$_baseNote/";
  static const noteGetMany = _baseNote;
  static const noteCreate = _baseNote;
  static const noteUpdate = "$_baseNote/";
  static const noteDeleteSingle = "$_baseNote/";
}
