import 'package:airplane_app/domain/models/user.dart';
import 'package:airplane_app/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth;
  UserService userService;
  AuthService({required this.auth, required this.userService});

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      required String hobby}) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      UserModel user = UserModel(
        id: userCredential.user!.uid,
        name: name,
        email: email,
        hobby: hobby,
        balance: 28000000,
      );
      await userService.inputUserToFirestore(user);
      return user;
    } catch (e) {
      throw e.toString();
    }
  }

  Future signOut() async {
    await auth.signOut();
  }
}
