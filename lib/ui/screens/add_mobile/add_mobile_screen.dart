import 'package:flutter/material.dart';
import 'package:mobile_app/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:mobile_app/ui/custom_widgets/custom_input_textfield.dart';
import 'package:mobile_app/ui/screens/add_mobile/add_mobile_view_model.dart';
import 'package:provider/provider.dart';

class AddMobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddMobileViewModel(),
      child: Consumer<AddMobileViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Add mobile"),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                CustomTextField(),
                CustomTextField(),
                CustomTextField(),
              ],
            ),
            bottomNavigationBar: CustomBottomNavigationBar(
              currentIndex: 1,
            ),
          );
        },
      ),
    );
  }
}
