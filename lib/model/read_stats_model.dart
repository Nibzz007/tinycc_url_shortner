import 'dart:convert';

ReadStatsModel readStatsModelFromJson(String str) =>
    ReadStatsModel.fromJson(json.decode(str));

String readStatsModelToJson(ReadStatsModel data) => json.encode(data.toJson());

class ReadStatsModel {
  Error error;
  String version;
  List<dynamic> stats;

  ReadStatsModel({
    required this.error,
    required this.version,
    required this.stats,
  });

  factory ReadStatsModel.fromJson(Map<String, dynamic> json) => ReadStatsModel(
        error: Error.fromJson(json["error"]),
        version: json["version"],
        stats: List<dynamic>.from(json["stats"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "error": error.toJson(),
        "version": version,
        "stats": List<dynamic>.from(stats.map((x) => x)),
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
