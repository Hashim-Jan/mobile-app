import 'package:flutter/cupertino.dart';
import 'package:mobile_app/core/enums/view_state.dart';
import 'package:mobile_app/core/models/mobile_model.dart';
import 'package:mobile_app/core/services/database.dart';
import 'package:mobile_app/core/view_model/base_view_model.dart';

class AddMobileViewModel extends BaseViewModel{
  final MobileModel mobileModel = MobileModel();
  final nameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final cnicController = TextEditingController();
  final addressController = TextEditingController();
  final amountController = TextEditingController();
  final imei1Controller = TextEditingController();
  final imei2Controller = TextEditingController();
  final purchasedAtController = TextEditingController();
  final mobileBrandController = TextEditingController();
  final mobileModelController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final _databaseServices= DatabaseServices();

  checkTextField()async{
    if(formKey.currentState.validate()){
      setState(ViewState.busy);
      mobileModel.addedAt = DateTime.now();
      print('Get mobile data from user');
      _databaseServices.addMobileData(mobileModel);
      await Future.delayed(Duration(seconds: 2));
      ///Clear text field
      clearTextField();
      setState(ViewState.idle);
    }
  }

  ///
  /// Clear textForm Field
  ///
  clearTextField(){
    nameController.clear();
    fatherNameController.clear();
    cnicController.clear();
    addressController.clear();
    amountController.clear();
    imei1Controller.clear();
    imei2Controller.clear();
    purchasedAtController.clear();
    mobileBrandController.clear();
    mobileModelController.clear();
  }

}