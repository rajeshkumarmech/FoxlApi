import 'package:flutter/material.dart';
import 'package:foxlapi/Api/Monthly_chits_module.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiProvider with ChangeNotifier {
  MonthlyChits? _apiResponse;
  bool _loading = false;
  String? _errorMessage;

  MonthlyChits? get apiResponse => _apiResponse;
  bool get loading => _loading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchApiData() async {
    _loading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      final response = await http.get(
          Uri.parse('https://chitsoft.in/wapp/api/mobile3/month_chit_api.php'));

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        _apiResponse = MonthlyChits.fromJson(jsonResponse);
      } else {
        _errorMessage = 'Failed';
      }
    } catch (e) {
      _errorMessage = '$e';
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}
