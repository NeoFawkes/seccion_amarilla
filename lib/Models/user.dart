class User{
  String _firstName="";
  final String _lastName="";
  String _email="";
  String _password="";



  set setFirstName(String firstName) => _firstName = firstName;
  String get getFirstName => _firstName;

  set setLastName(String lastName) => _firstName = lastName;
  String get getLastName => _lastName;

  set setEmail(String email) => _email = email;
  String get getEmail => _email;

  set setPassword(String password) => _password = password;
  String get getPassword => _password;


}