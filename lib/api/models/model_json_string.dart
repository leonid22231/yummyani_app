import 'dart:convert';

mixin ModelJsonString {
  Map<String, dynamic> toJson();
  
  String toJsonString() {
    return jsonEncode(toJson());
  }
  
}
