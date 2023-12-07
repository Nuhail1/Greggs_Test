import 'package:flutter/services.dart';

class HelperService {

  // The function below will load a file from assets for given path.
  static getAssetJson(String filePath) async {
    String data = await rootBundle.loadString(filePath);
    return data;
  }
  
}
