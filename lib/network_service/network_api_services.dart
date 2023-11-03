import 'dart:convert';
import 'dart:developer';
import 'package:tinycc_app/model/account_model.dart';
import 'package:tinycc_app/model/create_url_model.dart';
import 'package:tinycc_app/model/delete_single_url.dart';
import 'package:tinycc_app/model/edit_single_url.dart';
import 'package:tinycc_app/model/read_url_model.dart';
import 'package:tinycc_app/network_service/apis.dart';
import 'package:tinycc_app/network_service/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<Account?> getAccountDetails() async {
    Uri url = Uri.parse(Apis.getAccountDetails);
    final response = await http.get(
      url,
      headers: {
        'Authorization':
            'Basic bmlidTo1MzliZGRjNy1hY2VmLTRjYWMtOTRiNy04NjRlZThhNjY5YTU=',
      },
    );
    if (response.statusCode == 200) {
      log(response.body);
      final json = jsonDecode(response.body);
      final accountModel = Account.fromJson(json);
      return accountModel;
    }
    return null;
  }

  @override
  Future<ReadUrlModel?> readUrl() async {
    Uri url = Uri.parse(Apis.readUrl);
    final response = await http.get(
      url,
      headers: {
        'Authorization':
            'Basic bmlidTo1MzliZGRjNy1hY2VmLTRjYWMtOTRiNy04NjRlZThhNjY5YTU=',
      },
    );
    if (response.statusCode == 200) {
      log(response.body);
      final json = jsonDecode(response.body);
      final readUrlModel = ReadUrlModel.fromJson(json);
      return readUrlModel;
    }
    return null;
  }

  @override
  Future<CreateUrlModel?> createUrl() async {
    Uri url = Uri.parse(Apis.createUrl);
    final response = await http.post(url, headers: {
      'Authorization':
          'Basic bmlidTo1MzliZGRjNy1hY2VmLTRjYWMtOTRiNy04NjRlZThhNjY5YTU=',
    }, body: {});
    if (response.statusCode == 200) {}
  }

  @override
  Future<DeleteSingleUrlModel?> deleteUrl() async {
    Uri url = Uri.parse(Apis.deleteSingleUrl);
    final response = await http.delete(
      url,
      headers: {
        'Authorization':
            'Basic bmlidTo1MzliZGRjNy1hY2VmLTRjYWMtOTRiNy04NjRlZThhNjY5YTU=',
      },
    );
  }

  @override
  Future<EditSingleUrlModel?> editUrl() async {
    Uri url = Uri.parse(Apis.editSinngleUrl);
    final response = await http.patch(
      url,
      headers: {
        'Authorization':
            'Basic bmlidTo1MzliZGRjNy1hY2VmLTRjYWMtOTRiNy04NjRlZThhNjY5YTU=',
      },
    );
  }
}
