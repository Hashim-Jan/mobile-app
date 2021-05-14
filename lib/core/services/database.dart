import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_app/core/models/mobile_model.dart';

class DatabaseServices {
  final _db = FirebaseFirestore.instance;
  ///
  /// Add mobile data in database
  ///
  addMobileData(MobileModel mobileModel)async{
    try{
      await _db.collection("mobile").add(mobileModel.toJson());
    }
    catch(e){
      print("Exception @DatabaseService : $e");
    }
  }

  ///
  /// get data from database
  ///
  Future<List<MobileModel>> getMobile() async {
    final List<MobileModel> mobileList = [];
    try {
      QuerySnapshot snapshot = await _db.collection('mobile')
          .orderBy('addedAt',descending: true).get();
      if (snapshot.docs.length > 0) {
        snapshot.docs.forEach((doc) {
          mobileList.add(MobileModel.fromJson(doc,doc.id));
        });
      } else {
        print('No mobile data in database');
      }
    } catch (e) {
      print('Exception @DatabaseService : $e');
    }
    return mobileList;
  }

  ///
  /// Delete mobile document
  ///
  deleteMobileEntry(mobileId){
    try{
      _db.collection('mobile').doc(mobileId).delete();
    }
    catch(e){
      print('Exception @DeleteMobileData :$e');
    }
  }
}
