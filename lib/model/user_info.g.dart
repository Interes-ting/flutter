// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
    json['state'] as int,
    json['code'] as String,
    json['message'] as String,
    (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'state': instance.state,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['id'] as int,
    json['carApplyId'] as int,
    json['opSchedulingId'] as int,
    json['carId'] as int,
    json['driverId'] as int,
    json['recordPer'] as String,
    json['recordPerId'] as int,
    json['phone'] as String,
    json['sysDepartmentId'] as int,
    json['sysDepartmentName'] as String,
    json['willOutTime'] as String,
    json['outDate'] as String,
    json['onAddress'] as String,
    json['destination'] as String,
    json['billingId'] as int,
    (json['carCost'] as num)?.toDouble(),
    (json['glCost'] as num)?.toDouble(),
    (json['gqCost'] as num)?.toDouble(),
    (json['jyCost'] as num)?.toDouble(),
    json['state'] as int,
    json['organizeId'] as int,
    json['remark'] as String,
    json['delState'] as int,
    (json['beginLongitude'] as num)?.toDouble(),
    (json['beginLatitude'] as num)?.toDouble(),
    (json['beginMileage'] as num)?.toDouble(),
    (json['beginFuelConsumption'] as num)?.toDouble(),
    json['terminal'] as int,
    json['parkingLotId'] as int,
    json['ifClassified'] as int,
    json['stateName'] as String,
    json['schedulingPerId'] as int,
    json['driver'] as String,
    json['driverPhone'] as String,
    json['carNo'] as String,
    json['applyPerId'] as int,
    json['terminalNum'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'carApplyId': instance.carApplyId,
      'opSchedulingId': instance.opSchedulingId,
      'carId': instance.carId,
      'driverId': instance.driverId,
      'recordPer': instance.recordPer,
      'recordPerId': instance.recordPerId,
      'phone': instance.phone,
      'sysDepartmentId': instance.sysDepartmentId,
      'sysDepartmentName': instance.sysDepartmentName,
      'willOutTime': instance.willOutTime,
      'outDate': instance.outDate,
      'onAddress': instance.onAddress,
      'destination': instance.destination,
      'billingId': instance.billingId,
      'carCost': instance.carCost,
      'glCost': instance.glCost,
      'gqCost': instance.gqCost,
      'jyCost': instance.jyCost,
      'state': instance.state,
      'organizeId': instance.organizeId,
      'remark': instance.remark,
      'delState': instance.delState,
      'beginLongitude': instance.beginLongitude,
      'beginLatitude': instance.beginLatitude,
      'beginMileage': instance.beginMileage,
      'beginFuelConsumption': instance.beginFuelConsumption,
      'terminal': instance.terminal,
      'parkingLotId': instance.parkingLotId,
      'ifClassified': instance.ifClassified,
      'stateName': instance.stateName,
      'schedulingPerId': instance.schedulingPerId,
      'driver': instance.driver,
      'driverPhone': instance.driverPhone,
      'carNo': instance.carNo,
      'applyPerId': instance.applyPerId,
      'terminalNum': instance.terminalNum,
    };
