abstract class BaseApiServices {
  Future<dynamic> getAccountDetails(String? auth);
  Future<dynamic> readUrl();
  Future<dynamic> createUrl();
  Future<dynamic> deleteUrl();
  Future<dynamic> editUrl();
  Future<dynamic> readStatsUrl();
}
