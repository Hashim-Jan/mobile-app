import 'package:flutter/cupertino.dart';
import 'package:mobile_app/core/models/mobile_model.dart';
import 'package:mobile_app/core/services/database.dart';

class HomeViewModel extends ChangeNotifier {
  final _database = DatabaseServices();
  List<MobileModel> mobileList = [];

  HomeViewModel() {
    showMobile();
  }

  showMobile() async {
    mobileList = await _database.getMobile();
  }
}
