import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../domain/models/user.dart';
import '../services/auth_service.dart';
import '../services/user_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthService authService;
  final UserService userService;
  AuthCubit({required this.authService, required this.userService})
      : super(AuthInitial());

  Future signUp(
      {required String email,
      required String password,
      required String hobby,
      required String name}) async {
    emit(AuthLoading());
    try {
      UserModel user = await authService.signUp(
          email: email, password: password, name: name, hobby: hobby);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future signOut() async {
    try {
      emit(AuthLoading());
      await authService.signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      emit(AuthLoading());
      UserModel user = await userService.getUserById(id);
      emit(AuthSuccess(user));
      return user;
    } catch (e) {
      emit(AuthFailure(e.toString()));
      throw e.toString();
    }
  }
}
