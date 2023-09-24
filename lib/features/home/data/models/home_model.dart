//  site name quicktype

// To parse this JSON data, do
//
//     final demo = demoFromJson(jsonString);

// import 'dart:convert';

// List<Demo> demoFromJson(String str) => List<Demo>.from(json.decode(str).map((x) => Demo.fromJson(x)));

// String demoToJson(List<Demo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Demo {

// all model classs

// }

// To parse this JSON data, do
//
//     final userDataModel = userDataModelFromJson(jsonString);

import 'dart:convert';

UserDataModel userDataModelFromJson(String str) =>
    UserDataModel.fromJson(json.decode(str));

String userDataModelToJson(UserDataModel data) => json.encode(data.toJson());

class UserDataModel {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  UserDataModel({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
