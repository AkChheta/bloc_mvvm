// To parse this JSON data, do
//
//     final userDetailsModel = userDetailsModelFromJson(jsonString);

import 'dart:convert';

List<UserDetailsModel> userDetailsModelFromJson(String str) =>
    List<UserDetailsModel>.from(
        json.decode(str).map((x) => UserDetailsModel.fromJson(x)));

String userDetailsModelToJson(List<UserDetailsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserDetailsModel {
  DateTime? createdAt;
  String? name;
  String? avatar;
  String? id;
  List<Qualification>? qualifications;
  String? email;
  String? username;
  String? password;
  dynamic phone;
  String? age;
  String? institute;
  String? query;
  dynamic address;
  String? status;
  String? userId;
  String? phoneNumber;
  String? chargedItems;
  String? overdueItems;
  String? holdItems;
  String? fineAmount;
  String? role;
  String? userDetailsModelPhoneNumber;
  List<String>? qualification;
  String? job;
  List<int>? mark;
  String? title;
  String? desc;
  String? degree;
  String? completionData;

  UserDetailsModel({
    this.createdAt,
    this.name,
    this.avatar,
    this.id,
    this.qualifications,
    this.email,
    this.username,
    this.password,
    this.phone,
    this.age,
    this.institute,
    this.query,
    this.address,
    this.status,
    this.userId,
    this.phoneNumber,
    this.chargedItems,
    this.overdueItems,
    this.holdItems,
    this.fineAmount,
    this.role,
    this.userDetailsModelPhoneNumber,
    this.qualification,
    this.job,
    this.mark,
    this.title,
    this.desc,
    this.degree,
    this.completionData,
  });

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      UserDetailsModel(
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        id: json["id"],
        qualifications: json["qualifications"] == null
            ? []
            : List<Qualification>.from(
                json["qualifications"]!.map((x) => Qualification.fromJson(x))),
        email: json["email"],
        username: json["username"],
        password: json["password"],
        phone: json["phone"],
        age: json["age"],
        institute: json["institute"],
        query: json["query"],
        address: json["address"],
        status: json["status"],
        userId: json["user ID"],
        phoneNumber: json["phone number"],
        chargedItems: json["charged items"],
        overdueItems: json["overdue items"],
        holdItems: json["hold items"],
        fineAmount: json["fine amount"],
        role: json["role"],
        userDetailsModelPhoneNumber: json["phone_number"],
        qualification: json["qualification"] == null
            ? []
            : List<String>.from(json["qualification"]!.map((x) => x)),
        job: json["job"],
        mark: json["mark"] == null
            ? []
            : List<int>.from(json["mark"]!.map((x) => x)),
        title: json["title"],
        desc: json["desc"],
        degree: json["degree"],
        completionData: json["\"completionData"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "id": id,
        "qualifications": qualifications == null
            ? []
            : List<dynamic>.from(qualifications!.map((x) => x.toJson())),
        "email": email,
        "username": username,
        "password": password,
        "phone": phone,
        "age": age,
        "institute": institute,
        "query": query,
        "address": address,
        "status": status,
        "user ID": userId,
        "phone number": phoneNumber,
        "charged items": chargedItems,
        "overdue items": overdueItems,
        "hold items": holdItems,
        "fine amount": fineAmount,
        "role": role,
        "phone_number": userDetailsModelPhoneNumber,
        "qualification": qualification == null
            ? []
            : List<dynamic>.from(qualification!.map((x) => x)),
        "job": job,
        "mark": mark == null ? [] : List<dynamic>.from(mark!.map((x) => x)),
        "title": title,
        "desc": desc,
        "degree": degree,
        "\"completionData": completionData,
      };
}

class AddressClass {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  AddressClass({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  factory AddressClass.fromJson(Map<String, dynamic> json) => AddressClass(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
      );

  Map<String, dynamic> toJson() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo?.toJson(),
      };
}

class Geo {
  String? lat;
  String? lng;

  Geo({
    this.lat,
    this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
      };
}

class Qualification {
  String? degree;
  String? completionData;
  String? email;
  String? address;
  String? completionDate;

  Qualification({
    this.degree,
    this.completionData,
    this.email,
    this.address,
    this.completionDate,
  });

  factory Qualification.fromJson(Map<String, dynamic> json) => Qualification(
        degree: json["degree"],
        completionData: json["completionData"],
        email: json["email"],
        address: json["address"],
        completionDate: json["completionDate"],
      );

  Map<String, dynamic> toJson() => {
        "degree": degree,
        "completionData": completionData,
        "email": email,
        "address": address,
        "completionDate": completionDate,
      };
}
