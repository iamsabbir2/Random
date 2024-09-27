import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random/practice_one/models/user.dart';

class UserNotifier extends StateNotifier<List<User>> {
  UserNotifier() : super(const []);

  void addUser(User user) {
    state = [...state, user];
  }
}

final userProvider = StateNotifierProvider<UserNotifier, List<User>>((ref) {
  return UserNotifier();
});
