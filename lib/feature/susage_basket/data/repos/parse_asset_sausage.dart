import 'dart:convert';
import '../../../../core/constants/asset_file.dart';
import '../../../../core/services/helper_service.dart';
import '../models/sausage_model.dart';

class AssetSausage {
  // The below function will retrun a SausageModel object for the given sausage file path
  static parse() async {
    var data = await HelperService.getAssetJson(AssetFile.sausageRoll);
    SausageModel sausage = SausageModel.fromJson(jsonDecode(data));
    return sausage;
  }
}
