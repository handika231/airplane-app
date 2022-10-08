import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String hobby;
  final int balance;
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.hobby,
    required this.balance,
  });
  @override
  List<Object?> get props => [email, name, id, hobby, balance];
}
