import 'package:flutter/material.dart';
import 'package:random/practice_one/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random/practice_one/widget/users_list.dart';

class UsersScreen extends ConsumerStatefulWidget {
  const UsersScreen({super.key});

  @override
  ConsumerState<UsersScreen> createState() {
    return _UsersScreenState();
  }
}

class _UsersScreenState extends ConsumerState<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    final users = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users List'),
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: UsersList(
        users: users,
      ),
    );
  }
}
