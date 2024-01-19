import 'json_reader.dart';
import 'user.model.dart';
import 'dart:convert';

void main() {
  final List<dynamic> jsonList = json.decode(jsonReader("user.json"));
  final response = UserModelList.fromJson(jsonList);
  displayUserListFromJson(response);
  displayUserListToJson(response.toJson());
}

void displayUserListFromJson(UserModelList response) {
  response.userList.forEach((user) {
    print("=========== fromJson user ${user.id} ===========");
    print("id: ${user.id}");
    print("firstName: ${user.firstName}");
    print("lastName: ${user.lastName}");
    print("email: ${user.email}");
    print("gender: ${user.gender}");
  });
}

void displayUserListToJson(List<Map<String, dynamic>> response) {
  response.forEach((user) {
    print("=========== toJson user ${user["id"]} ===========");
    print("id: ${user["id"]}");
    print("firstName: ${user["firstName"]}");
    print("lastName: ${user["lastName"]}");
    print("email: ${user["email"]}");
    print("gender: ${user["gender"]}");
  });
}
