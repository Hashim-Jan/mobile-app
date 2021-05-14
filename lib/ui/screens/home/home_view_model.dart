import 'package:mobile_app/core/enums/view_state.dart';
import 'package:mobile_app/core/models/mobile_model.dart';
import 'package:mobile_app/core/services/database.dart';
import 'package:mobile_app/core/view_model/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  final _databaseServices = DatabaseServices();
  List<MobileModel> mobileList = [];

  HomeViewModel() {
    showMobile();
  }

  showMobile() async {
    setState(ViewState.busy);
    mobileList = await _databaseServices.getMobile();
    setState(ViewState.idle);
  }

  deleteMobileData(mobileId){
    setState(ViewState.busy);
    _databaseServices.deleteMobileEntry(mobileId);
    setState(ViewState.idle);
  }

}
