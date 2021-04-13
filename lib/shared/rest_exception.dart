
import 'package:http/http.dart';

class RestException implements Exception {
  final String message;
  final int statusCode;
  final Response? response;

  RestException({
    required this.message,
    required this.statusCode,
    this.response,
  });

  @override
  String toString() => 'RestException(message: $message, statusCode: $statusCode)';
}
