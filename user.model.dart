import 'user.entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.gender});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        gender: json["gender"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "gender": gender,
    };
  }
}

class UserModelList {
  List<UserModel> userList;
  UserModelList({required this.userList});

  factory UserModelList.fromJson(List<dynamic> josnList) {
    List<UserModel> userList =
        josnList.map((user) => UserModel.fromJson(user)).toList();
    return UserModelList(userList: userList);
  }

  List<Map<String, dynamic>> toJson() {
    return userList.map((user) {
      final userModel = UserModel(
          id: user.id,
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          gender: user.gender);
      return userModel.toJson();
    }).toList();
  }
}
