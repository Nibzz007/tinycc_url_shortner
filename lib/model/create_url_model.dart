import 'dart:convert';

CreateUrlModel createUrlModelFromJson(String str) =>
    CreateUrlModel.fromJson(json.decode(str));

String createUrlModelToJson(CreateUrlModel data) => json.encode(data.toJson());

class CreateUrlModel {
  CreateUrlModelError error;
  String version;
  List<Url> urls;

  CreateUrlModel({
    required this.error,
    required this.version,
    required this.urls,
  });

  factory CreateUrlModel.fromJson(Map<String, dynamic> json) => CreateUrlModel(
        error: CreateUrlModelError.fromJson(json["error"]),
        version: json["version"],
        urls: List<Url>.from(json["urls"].map((x) => Url.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error.toJson(),
        "version": version,
        "urls": List<dynamic>.from(urls.map((x) => x.toJson())),
      };
}

class CreateUrlModelError {
  int code;
  String message;

  CreateUrlModelError({
    required this.code,
    required this.message,
  });

  factory CreateUrlModelError.fromJson(Map<String, dynamic> json) =>
      CreateUrlModelError(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}

class Url {
  String longUrl;
  String customHash;
  UrlError error;

  Url({
    required this.longUrl,
    required this.customHash,
    required this.error,
  });

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        longUrl: json["long_url"],
        customHash: json["custom_hash"],
        error: UrlError.fromJson(json["error"]),
      );

  Map<String, dynamic> toJson() => {
        "long_url": longUrl,
        "custom_hash": customHash,
        "error": error.toJson(),
      };
}

class UrlError {
  int code;
  String message;
  String details;

  UrlError({
    required this.code,
    required this.message,
    required this.details,
  });

  factory UrlError.fromJson(Map<String, dynamic> json) => UrlError(
        code: json["code"],
        message: json["message"],
        details: json["details"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "details": details,
      };
}
