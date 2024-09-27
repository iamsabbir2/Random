import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class User {
  User(this.name, this.phone, this.email) : id = uuid.v4();

  final String id;
  final String name;
  final String phone;
  final String email;
}
