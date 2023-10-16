import 'dart:convert';

EditSingleUrlModel editSingleUrlModelFromJson(String str) =>
    EditSingleUrlModel.fromJson(json.decode(str));

String editSingleUrlModelToJson(EditSingleUrlModel data) =>
    json.encode(data.toJson());

class EditSingleUrlModel {
  Error error;
  String version;
  List<Url> urls;

  EditSingleUrlModel({
    required this.error,
    required this.version,
    required this.urls,
  });

  factory EditSingleUrlModel.fromJson(Map<String, dynamic> json) =>
      EditSingleUrlModel(
        error: Error.fromJson(json["error"]),
        version: json["version"],
        urls: List<Url>.from(json["urls"].map((x) => Url.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error.toJson(),
        "version": version,
        "urls": List<dynamic>.from(urls.map((x) => x.toJson())),
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

class Url {
  String hash;
  Error error;

  Url({
    required this.hash,
    required this.error,
  });

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        hash: json["hash"],
        error: Error.fromJson(json["error"]),
      );

  Map<String, dynamic> toJson() => {
        "hash": hash,
        "error": error.toJson(),
      };
}
