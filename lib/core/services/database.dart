import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_app/core/models/mobile_model.dart';

class DatabaseServices {
  final _db = FirebaseFirestore.instance;

  Future<List<MobileModel>> getMobile() async {
    final List<MobileModel> mobileList = [];
    try {
      QuerySnapshot snapshot = await _db.collectionGroup('mobile').get();
      if (snapshot.docs.length > 0) {
        snapshot.docs.forEach((doc) {
          mobileList.add(MobileModel.fromJson(doc));
        });
      } else {
        print('No mobile data given in database');
      }
    } catch (e) {
      print('Error get in mobile : $e');
    }
    return mobileList;
  }
}
