import 'package:flutter/material.dart';
import 'package:mobile_app/core/models/mobile_model.dart';

class MobileContainer extends StatelessWidget {
  final MobileModel mobileModel ;

  MobileContainer({this.mobileModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Customer Name : ${mobileModel.customerName}'),
      subtitle: Text('Mobile Mode : ${mobileModel.mobileModel}'),
    );
  }
}
