class User
{
  int _userId = 0;
  String _firstName="";
  String _lastName = "";
  String _email="";
  String _password="";

  set setUserId(int userId) => _userId = userId;
  int? get getUserId => _userId;

  set setFirstName(String firstName) => _firstName = firstName;
  String get getFirstName => _firstName;

  set setLastName(String lastName) => _lastName = lastName;
  String get getLastName => _lastName;
  
  set setEmail(String email) => _email = email;
  String get getEmail => _email;

  set setPassword(String password) => _password = password;
  String get getPassword => _password;

}