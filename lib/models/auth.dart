class UserModel {
  String? uID;
  String? userName;
  String? email;
  String? phoneNo;
  String? profile;
  String? password;

  DateTime? joinDate;

  UserModel({
    this.uID,
    this.userName,
    this.email,
    this.phoneNo,
    this.profile,
    this.password,
    this.joinDate,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    uID = json['uID'];
    userName = json['userName'];
    email = json['email'];
    phoneNo = json['phoneNo'];
    profile = json['profile'];
    password = json['password'];
    joinDate =
        json['joinDate'] != null ? DateTime.parse(json['joinDate']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uID'] = uID;
    data['userName'] = userName;
    data['email'] = email;
    data['phoneNo'] = phoneNo;
    data['profile'] = profile;
    data['password'] = password;
    data['joinDate'] = joinDate?.toIso8601String();
    return data;
  }
}
