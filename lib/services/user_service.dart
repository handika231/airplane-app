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
}
