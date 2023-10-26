import 'dart:convert';
import 'dart:developer';
import 'package:tinycc_app/model/account_model.dart';
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
}
