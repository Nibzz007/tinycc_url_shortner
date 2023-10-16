import 'dart:convert';

ReadUrlModel readUrlModelFromJson(String str) =>
    ReadUrlModel.fromJson(json.decode(str));

String readUrlModelToJson(ReadUrlModel data) => json.encode(data.toJson());

class ReadUrlModel {
  Error error;
  String version;
  List<dynamic> urls;
  Page page;

  ReadUrlModel({
    required this.error,
    required this.version,
    required this.urls,
    required this.page,
  });

  factory ReadUrlModel.fromJson(Map<String, dynamic> json) => ReadUrlModel(
        error: Error.fromJson(json["error"]),
        version: json["version"],
        urls: List<dynamic>.from(json["urls"].map((x) => x)),
        page: Page.fromJson(json["page"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error.toJson(),
        "version": version,
        "urls": List<dynamic>.from(urls.map((x) => x)),
        "page": page.toJson(),
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

class Page {
  int resultsCount;
  int totalCount;
  int offset;

  Page({
    required this.resultsCount,
    required this.totalCount,
    required this.offset,
  });

  factory Page.fromJson(Map<String, dynamic> json) => Page(
        resultsCount: json["results_count"],
        totalCount: json["total_count"],
        offset: json["offset"],
      );

  Map<String, dynamic> toJson() => {
        "results_count": resultsCount,
        "total_count": totalCount,
        "offset": offset,
      };
}
