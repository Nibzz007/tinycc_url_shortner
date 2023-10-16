import 'dart:convert';

ResetStatsModel resetStatsModelFromJson(String str) => ResetStatsModel.fromJson(json.decode(str));

String resetStatsModelToJson(ResetStatsModel data) => json.encode(data.toJson());

class ResetStatsModel {
    Error error;
    String version;

    ResetStatsModel({
        required this.error,
        required this.version,
    });

    factory ResetStatsModel.fromJson(Map<String, dynamic> json) => ResetStatsModel(
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
