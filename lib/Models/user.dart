class User{
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  User({
    this.firstName = "",
    this.lastName = "",
    required this.email,
    required this.password
  });

}