import 'dart:convert';

DeleteSingleUrlModel deleteSingleUrlModelFromJson(String str) =>
    DeleteSingleUrlModel.fromJson(json.decode(str));

String deleteSingleUrlModelToJson(DeleteSingleUrlModel data) =>
    json.encode(data.toJson());

class DeleteSingleUrlModel {
  Error error;
  String version;

  DeleteSingleUrlModel({
    required this.error,
    required this.version,
  });

  factory DeleteSingleUrlModel.fromJson(Map<String, dynamic> json) =>
      DeleteSingleUrlModel(
        error: Error.fromJson(json["error"]),
        version: json["version"],
      );

  Map<String, dynamic> toJson() => {
        "error": error.toJson(),
        "version": version,
      };
}

class Error {
  int code;
  String message;

  Error({
    required this.code,
    required this.message,
  });

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
