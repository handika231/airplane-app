import 'package:cloud_firestore/cloud_firestore.dart';

import '../domain/models/user.dart';

class UserService {
  FirebaseFirestore firestore;
  UserService(this.firestore);

  Future inputUserToFirestore(UserModel user) async {
    try {
      await firestore.collection('users').doc(user.id).set({
        'name': user.name,
        'email': user.email,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      throw e.toString();
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot =
          await firestore.collection('users').doc(id).get();
      return UserModel(
        id: snapshot.id,
        name: snapshot['name'],
        email: snapshot['email'],
        hobby: snapshot['hobby'],
        balance: snapshot['balance'],
      );
    } catch (e) {
      throw e.toString();
    }
  }
}
