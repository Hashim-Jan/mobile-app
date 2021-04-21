class MobileModel{
  String customerName;
  String mobileModel;

  MobileModel({this.customerName,this.mobileModel});

  MobileModel.fromJson({json}){
    this.customerName = json['customerName'];
    this.mobileModel = json['mobileModel'];
  }

  toJson(){
    return {
      'customerName' : this.customerName,
      'mobileModel' : this.mobileModel,
    };
  }
}