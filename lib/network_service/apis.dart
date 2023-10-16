class Apis {
  // Base Url
  static const baseUrl = " https://tiny.cc/tiny/api/3/";

  // Endpoints
  static const getAccountDetails = "${baseUrl}account"; // GET
  static const readUrl = "${baseUrl}urls/?order_by=clicks&limit=3"; //GET
  static const createUrl = "${baseUrl}urls/"; // POST
  static const editSinngleUrl = "${baseUrl}urls/example-hash"; // PATCH
  static const deleteSingleUrl = "${baseUrl}urls/example-hash"; // DELETE
  static const readStats = "${baseUrl}stats/example-hash"; // GET
  static const resetStats = "${baseUrl}stats/example-hash"; // DELETE
}
