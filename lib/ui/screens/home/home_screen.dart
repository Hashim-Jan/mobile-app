import 'package:flutter/material.dart';
import 'package:mobile_app/core/enums/view_state.dart';
import 'package:mobile_app/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:mobile_app/ui/custom_widgets/mobile_container.dart';
import 'package:mobile_app/ui/screens/home/home_view_model.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child){
          return ModalProgressHUD(
            inAsyncCall: model.status == ViewState.busy,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Home Screen'),
                centerTitle: true,
              ),
              body: ListView.builder(
                itemCount: model.mobileList.length,
                itemBuilder: (context,index){
                  return MobileContainer(
                    mobileModel: model.mobileList[index],
                    onPressed: ()=>model.deleteMobileData(model.mobileList[index].mobileId),
                  );
                },
              ),
              bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 0,),
            ),
          );
        },
      ),
    );
  }
}
