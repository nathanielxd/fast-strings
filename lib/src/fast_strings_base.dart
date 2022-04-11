import 'dart:convert';
import 'package:yaml/yaml.dart';
import 'package:flutter/services.dart' show rootBundle;

class Strings {

  static Map<String, dynamic> data = {};

  static Future<void> initialize(String file) async {
    final localisation = await rootBundle.loadString(file);
    final yaml = await loadYaml(localisation);
    final json = jsonEncode(yaml);
    data = jsonDecode(json);
  }
}