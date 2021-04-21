import 'package:flutter/cupertino.dart';
import 'package:mobile_app/core/models/mobile_model.dart';

class HomeViewModel extends ChangeNotifier{

  final List<MobileModel> mobileList = [
    MobileModel(customerName: "Ali",mobileModel: 'OPPO'),
    MobileModel(customerName: "Ali",mobileModel: 'OPPO'),
    MobileModel(customerName: "Ali",mobileModel: 'OPPO'),
    MobileModel(customerName: "Ali",mobileModel: 'OPPO'),
    MobileModel(customerName: "Ali",mobileModel: 'OPPO'),
  ];
}