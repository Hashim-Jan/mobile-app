import 'package:flutter/material.dart';
import 'package:mobile_app/core/models/mobile_model.dart';


class MobileContainer extends StatelessWidget {
  final MobileModel mobileModel ;
  final onPressed;

  MobileContainer({this.mobileModel,@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text('Shop'),
              subtitle: Text('Date'),
              trailing: IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.delete),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///
                /// Seller details
                ///
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text('Seller Name: ${mobileModel.customerName}'),
                    SizedBox(height: 5,),
                    Text('Father Name: ${mobileModel.fatherName}'),
                    SizedBox(height: 5,),
                    Text('CNIC: ${mobileModel.cnic}'),
                    SizedBox(height: 5,),
                    Text('Mobile Brand: ${mobileModel.mobileBrand}'),
                    SizedBox(height: 5,),
                    Text('Mobile Model: ${mobileModel.mobileModel}'),
                    SizedBox(height: 5,),
                    Text('Address: ${mobileModel.address}'),
                    SizedBox(height: 5,),
                    Text('Amount: ${mobileModel.amount}'),
                    SizedBox(height: 5,),
                    Text('IMEI1: ${mobileModel.imei1}'),
                    SizedBox(height: 5,),
                    Text('IMEI2: ${mobileModel.imei2}'),
                    SizedBox(height: 5,),
                    Text('Date: ${mobileModel.purchasedAt}'),
                  ],
                ),
                SizedBox(height: 20,),
                ///
                /// Images
                ///
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        child: Image.asset("assets/images/person.jpg"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(width: 10,),
                      ClipRRect(
                        child: Image.asset("assets/images/person.jpg"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(width: 10,),
                      ClipRRect(
                        child: Image.asset("assets/images/person.jpg"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(width: 10,),
                      ClipRRect(
                        child: Image.asset("assets/images/person.jpg"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
