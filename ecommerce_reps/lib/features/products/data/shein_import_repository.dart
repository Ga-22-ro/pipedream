import 'package:cloud_functions/cloud_functions.dart';

class SheinImportRepository {
  SheinImportRepository(this._functions);
  final FirebaseFunctions _functions;
  Future<Map<String, dynamic>> importFromUrl(String url) async {
    final result = await _functions.httpsCallable('importSheinProduct').call<Map<String, dynamic>>({'url': url});
    return result.data;
  }
}
