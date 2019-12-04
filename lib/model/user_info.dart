import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo extends Object {
  @JsonKey(name: 'state')
  int state;

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  List<Data> data;

  UserInfo(
    this.state,
    this.code,
    this.message,
    this.data,
  );

  factory UserInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$UserInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}

@JsonSerializable()
class Data extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'carApplyId')
  int carApplyId;

  @JsonKey(name: 'opSchedulingId')
  int opSchedulingId;

  @JsonKey(name: 'carId')
  int carId;

  @JsonKey(name: 'driverId')
  int driverId;

  @JsonKey(name: 'recordPer')
  String recordPer;

  @JsonKey(name: 'recordPerId')
  int recordPerId;

  @JsonKey(name: 'phone')
  String phone;

  @JsonKey(name: 'sysDepartmentId')
  int sysDepartmentId;

  @JsonKey(name: 'sysDepartmentName')
  String sysDepartmentName;

  @JsonKey(name: 'willOutTime')
  String willOutTime;

  @JsonKey(name: 'outDate')
  String outDate;

  @JsonKey(name: 'onAddress')
  String onAddress;

  @JsonKey(name: 'destination')
  String destination;

  @JsonKey(name: 'billingId')
  int billingId;

  @JsonKey(name: 'carCost')
  double carCost;

  @JsonKey(name: 'glCost')
  double glCost;

  @JsonKey(name: 'gqCost')
  double gqCost;

  @JsonKey(name: 'jyCost')
  double jyCost;

  @JsonKey(name: 'state')
  int state;

  @JsonKey(name: 'organizeId')
  int organizeId;

  @JsonKey(name: 'remark')
  String remark;

  @JsonKey(name: 'delState')
  int delState;

  @JsonKey(name: 'beginLongitude')
  double beginLongitude;

  @JsonKey(name: 'beginLatitude')
  double beginLatitude;

  @JsonKey(name: 'beginMileage')
  double beginMileage;

  @JsonKey(name: 'beginFuelConsumption')
  double beginFuelConsumption;

  @JsonKey(name: 'terminal')
  int terminal;

  @JsonKey(name: 'parkingLotId')
  int parkingLotId;

  @JsonKey(name: 'ifClassified')
  int ifClassified;

  @JsonKey(name: 'stateName')
  String stateName;

  @JsonKey(name: 'schedulingPerId')
  int schedulingPerId;

  @JsonKey(name: 'driver')
  String driver;

  @JsonKey(name: 'driverPhone')
  String driverPhone;

  @JsonKey(name: 'carNo')
  String carNo;

  @JsonKey(name: 'applyPerId')
  int applyPerId;

  @JsonKey(name: 'terminalNum')
  String terminalNum;

  Data(
    this.id,
    this.carApplyId,
    this.opSchedulingId,
    this.carId,
    this.driverId,
    this.recordPer,
    this.recordPerId,
    this.phone,
    this.sysDepartmentId,
    this.sysDepartmentName,
    this.willOutTime,
    this.outDate,
    this.onAddress,
    this.destination,
    this.billingId,
    this.carCost,
    this.glCost,
    this.gqCost,
    this.jyCost,
    this.state,
    this.organizeId,
    this.remark,
    this.delState,
    this.beginLongitude,
    this.beginLatitude,
    this.beginMileage,
    this.beginFuelConsumption,
    this.terminal,
    this.parkingLotId,
    this.ifClassified,
    this.stateName,
    this.schedulingPerId,
    this.driver,
    this.driverPhone,
    this.carNo,
    this.applyPerId,
    this.terminalNum,
  );

  factory Data.fromJson(Map<String, dynamic> srcJson) =>
      _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
