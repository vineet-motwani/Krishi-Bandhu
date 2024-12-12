// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> getImageBase64(String url) async {
  http.Response response = await http.get(Uri.parse(url));
  String base64 = base64Encode(response.bodyBytes);
  return base64;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
