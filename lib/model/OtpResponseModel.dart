

import 'package:freezed_annotation/freezed_annotation.dart';

import '../utilities/typedef.dart';

@freezed
class OtpResponseModel {

  final String? errordesc;
  final bool? generatedOTPStatus;
  OtpResponseModel(this.errordesc, this.generatedOTPStatus);

  factory OtpResponseModel.fromJson(JSON json) {
    return OtpResponseModel(json['errordesc'], json["generatedOTPStatus"]);
  }

}