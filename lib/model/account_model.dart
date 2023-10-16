import 'dart:convert';

TinyccAccountModel tinyccAccountModelFromJson(String str) =>
    TinyccAccountModel.fromJson(json.decode(str));

String tinyccAccountModelToJson(TinyccAccountModel data) =>
    json.encode(data.toJson());

class TinyccAccountModel {
  Error error;
  String version;
  Account account;

  TinyccAccountModel({
    required this.error,
    required this.version,
    required this.account,
  });

  factory TinyccAccountModel.fromJson(Map<String, dynamic> json) =>
      TinyccAccountModel(
        error: Error.fromJson(json["error"]),
        version: json["version"],
        account: Account.fromJson(json["account"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error.toJson(),
        "version": version,
        "account": account.toJson(),
      };
}

class Account {
  String userId;
  String username;
  Counters counters;
  Links links;

  Account({
    required this.userId,
    required this.username,
    required this.counters,
    required this.links,
  });

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        userId: json["user_id"],
        username: json["username"],
        counters: Counters.fromJson(json["counters"]),
        links: Links.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "username": username,
        "counters": counters.toJson(),
        "links": links.toJson(),
      };
}

class Counters {
  MonthUrls urls;
  MonthUrls todayApiCalls;
  MonthUrls monthUrls;
  DailyRedirects dailyRedirects;

  Counters({
    required this.urls,
    required this.todayApiCalls,
    required this.monthUrls,
    required this.dailyRedirects,
  });

  factory Counters.fromJson(Map<String, dynamic> json) => Counters(
        urls: MonthUrls.fromJson(json["urls"]),
        todayApiCalls: MonthUrls.fromJson(json["today_api_calls"]),
        monthUrls: MonthUrls.fromJson(json["month_urls"]),
        dailyRedirects: DailyRedirects.fromJson(json["daily_redirects"]),
      );

  Map<String, dynamic> toJson() => {
        "urls": urls.toJson(),
        "today_api_calls": todayApiCalls.toJson(),
        "month_urls": monthUrls.toJson(),
        "daily_redirects": dailyRedirects.toJson(),
      };
}

class DailyRedirects {
  int limit;

  DailyRedirects({
    required this.limit,
  });

  factory DailyRedirects.fromJson(Map<String, dynamic> json) => DailyRedirects(
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "limit": limit,
      };
}

class MonthUrls {
  int count;
  int limit;

  MonthUrls({
    required this.count,
    required this.limit,
  });

  factory MonthUrls.fromJson(Map<String, dynamic> json) => MonthUrls(
        count: json["count"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "limit": limit,
      };
}

class Links {
  String urls;
  String stats;
  String log;

  Links({
    required this.urls,
    required this.stats,
    required this.log,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        urls: json["urls"],
        stats: json["stats"],
        log: json["log"],
      );

  Map<String, dynamic> toJson() => {
        "urls": urls,
        "stats": stats,
        "log": log,
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
