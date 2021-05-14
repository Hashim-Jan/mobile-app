import 'package:flutter/material.dart';
import 'package:mobile_app/core/enums/view_state.dart';
import 'package:mobile_app/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:mobile_app/ui/custom_widgets/custom_input_textfield.dart';
import 'package:mobile_app/ui/screens/add_mobile/add_mobile_view_model.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class AddMobileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddMobileViewModel(),
      child: Consumer<AddMobileViewModel>(
        builder: (context, model, child) {
          return ModalProgressHUD(
            inAsyncCall: model.status == ViewState.busy,
              child: Scaffold(
                appBar: AppBar(
                  title: Text("Add mobile"),
                  centerTitle: true,
                ),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: model.formKey,
                    child: ListView(
                      children: [
                        ///
                        /// Seller name
                        ///
                        CustomTextField(
                          hintText: 'Enter seller name',
                          labelText: 'Seller name',
                          validator: (value){
                            if(value == null){
                              return "Seller name should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.nameController,
                          onChange: (value){
                            model.mobileModel.customerName=value;
                          },
                        ),
                        ///
                        /// father name
                        ///
                        CustomTextField(
                          hintText: 'Enter father name',
                          labelText: 'Father name',
                          validator: (value){
                            if(value == null){
                              return "Father name should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.fatherNameController,
                          onChange: (value){
                            model.mobileModel.fatherName=value;
                          },
                        ),
                        ///
                        /// CNIC
                        ///
                        CustomTextField(
                          hintText: 'Enter seller CNIC No',
                          labelText: 'CNIC No',
                          validator: (value){
                            if(value == null){
                              return "CNIC should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.cnicController,
                          onChange: (value){
                            model.mobileModel.cnic=value;
                          },
                        ),
                        ///
                        /// mobile brand
                        ///
                        CustomTextField(
                          hintText: 'Enter mobile brand',
                          labelText: 'Mobile brand',
                          validator: (value){
                            if(value == null){
                              return "Mobile brand should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.mobileBrandController,
                          onChange: (value){
                            model.mobileModel.mobileBrand=value;
                          },
                        ),
                        ///
                        /// Mobile model
                        ///
                        CustomTextField(
                          hintText: 'Enter mobile brand',
                          labelText: 'Mobile brand',
                          validator: (value){
                            if(value == null){
                              return "Mobile model should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.mobileModelController,
                          onChange: (value){
                            model.mobileModel.mobileModel=value;
                          },
                        ),
                        ///
                        /// address
                        ///
                        CustomTextField(
                          hintText: 'Enter address',
                          labelText: 'Address',
                          validator: (value){
                            if(value == null){
                              return "Address should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.addressController,
                          onChange: (value){
                            model.mobileModel.address=value;
                          },
                        ),
                        ///
                        /// amount
                        ///
                        CustomTextField(
                          hintText: 'Enter amount',
                          labelText: 'Amount',
                          validator: (value){
                            if(value == null){
                              return "Amount should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.amountController,
                          onChange: (value){
                            model.mobileModel.amount=value;
                          },
                        ),
                        ///
                        /// IMEI-1
                        ///
                        CustomTextField(
                          hintText: 'Enter mobile IMEI-1',
                          labelText: 'IMEI-1',
                          validator: (value){
                            if(value == null){
                              return "IMEI-1 should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.imei1Controller,
                          onChange: (value){
                            model.mobileModel.imei1=value;
                          },
                        ),
                        ///
                        /// IMEI-2
                        ///
                        CustomTextField(
                          hintText: 'Enter IMEI-2',
                          labelText: 'IMEI-2',
                          validator: (value){
                            if(value == null){
                              return "Mobile model should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.imei2Controller,
                          onChange: (value){
                            model.mobileModel.imei2=value;
                          },
                        ),
                        ///
                        /// purchased at
                        ///
                        CustomTextField(
                          hintText: 'Enter purchase Date',
                          labelText: 'Purchase Date',
                          validator: (value){
                            if(value == null){
                              return "Purchased date should not be empty";
                            }
                            else{
                              return null;
                            }
                          },
                          controller: model.purchasedAtController,
                          onChange: (value){
                            model.mobileModel.purchasedAt=value;
                          },
                        ),
                        ///
                        /// Button
                        ///
                        GestureDetector(
                          onTap: ()async{
                            ///check the text field
                            model.checkTextField();
                          },
                          child: Container(
                            height: 60,
                            child: Center(
                              child: Text(
                                'Submit',
                                textScaleFactor: 1.2,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                bottomNavigationBar: CustomBottomNavigationBar(
                  currentIndex: 1,
                ),
              ),
          );
        },
      ),
    );
  }
}
