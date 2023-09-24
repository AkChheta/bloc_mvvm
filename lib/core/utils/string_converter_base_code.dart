import 'dart:convert';

String toBase64(String text) {
  final bytes = utf8.encode(text);
  final base64Str = base64.encode(bytes);
  return base64Str;
}

String decodeBase64String(String base64Txt) {
  final decodedBytes = base64.decode(base64Txt);
  final decodedStr = utf8.decode(decodedBytes);
  return decodedStr;
}
