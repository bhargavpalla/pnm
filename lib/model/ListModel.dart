

import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../utilities/typedef.dart';

@freezed
class ListModel{
  ListModel(this.list);
  final int list ;
  // factory ListModel({
  //   required ListModel hitList,
  //
  // }) = _ListModel;
  factory ListModel.fromJson(JSON json) {

    return ListModel(json['data']['id']);
  }

}

class Info {
  var id;

}