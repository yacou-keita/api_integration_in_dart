class UserEntity {
  int id;
  String firstName;
  String lastName;
  String email;
  String gender;

  UserEntity(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.gender});
}
