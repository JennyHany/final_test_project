// lib/user_model.dart
class User {
  final String email;
  final String password;

  User({required this.email, required this.password});
}

class UserStore {
  static final Map<String, User> _users = {};

  static bool registerUser(String email, String password) {
    if (_users.containsKey(email)) {
      return false; // User already exists
    }
    _users[email] = User(email: email, password: password);
    return true;
  }

  static User? loginUser(String email, String password) {
    final user = _users[email];
    if (user != null && user.password == password) {
      return user; // Successful login
    }
    return null; // Login failed
  }
}
