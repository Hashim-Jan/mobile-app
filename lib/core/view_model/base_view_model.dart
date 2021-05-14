import 'package:flutter/cupertino.dart';
import 'package:mobile_app/core/enums/view_state.dart';
///
/// [BaseViewModel] is the base class with all
/// state related logic.
///
/// [BaseViewModel] class will be extended by all viewModels.
///
/// [setState] will be used to update the state of the screen
///
class BaseViewModel extends ChangeNotifier{
  ViewState _state = ViewState.idle;

  ViewState get status => _state;

  void setState(ViewState state){
    _state = state;
    notifyListeners();
  }
}