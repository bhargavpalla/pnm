import '../utilities/typedef.dart';
import 'BaseProvider.dart';

class ApiService {
  final BaseProvider _baseProvider;

  ApiService(this._baseProvider);

  Future<JSON> get<T>({
    required String endpoint,
    JSON? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    final response = await _baseProvider.get(endpoint,
        headers: _buildHeaders(false, headers), query: query);

    return response.body;
  }

  Future<JSON> post<T>({
    required String endpoint,
    JSON? body,
    JSON? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    final response = await _baseProvider.post(endpoint, body,
        headers: _buildHeaders(false, headers), query: query);

    return response.body;
  }

  Map<String, String> _buildHeaders(bool requiresAuth,
      [Map<String, String>? headers]) {
    final Map<String, String> customHeaders = <String, String>{
      'Accept': 'application/json; charset=utf-8',
      'User-Agent': 'AppName (version: 1.0.0)',
      'AppVersion': '408',
      'autoId': '66ddf9ff-a53c-4c97-a995-2d6887f034fd',
      'campCode': 'android',
    };

    if (requiresAuth) {
      customHeaders['Authorization'] = 'Basic ---';
    }
    if (headers != null) {
      customHeaders.addAll(headers);
    }
    return customHeaders;
  }
}
