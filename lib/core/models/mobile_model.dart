
class MobileModel {
  String mobileId;
  String customerName;
  String fatherName;
  var cnic;
  String address;
  var amount;
  var imei1;
  var imei2;
  String purchasedAt;
  String mobileBrand;
  String mobileModel;
  DateTime addedAt;



  MobileModel({
    this.mobileId,
    this.customerName,
    this.fatherName,
    this.cnic,
    this.address,
    this.amount,
    this.imei1,
    this.imei2,
    this.purchasedAt,
    this.mobileBrand,
    this.mobileModel,
    this.addedAt,
  });

  MobileModel.fromJson(json,id) {
    this.mobileId = id;
    this.customerName = json['customerName'];
    this.fatherName = json['fatherName'];
    this.cnic = json['cnic'];
    this.address = json['address'];
    this.amount = json['amount'];
    this.imei1 = json['imei1'];
    this.imei2 = json['imei2'];
    this.purchasedAt = json['purchasedAt'];
    this.mobileBrand = json['mobileBrand'];
    this.mobileModel = json['mobileModel'];
    this.addedAt = json['addedAt'].toDate();
  }

  toJson() {
    return {
      'customerName': this.customerName,
      'fatherName': this.fatherName,
      'cnic': this.cnic,
      'address': this.address,
      'amount': this.amount,
      'imei1': this.imei1,
      'imei2': this.imei2,
      'purchasedAt': this.purchasedAt,
      'mobileBrand': this.mobileBrand,
      'mobileModel': this.mobileModel,
      'addedAt' : this.addedAt,
    };
  }
}
