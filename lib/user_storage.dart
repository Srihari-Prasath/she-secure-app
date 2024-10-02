class UserStorage {
  static final Map<String, String> _users = {}; // Stores email-password pairs

  // Adds a user to the storage
  static void addUser(String email, String password) {
    _users[email] = password;
  }

  // Validates a user's credentials
  static bool validateUser(String email, String password) {
    return _users[email] == password;
  }
}