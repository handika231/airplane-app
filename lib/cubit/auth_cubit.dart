import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../domain/models/user.dart';
import '../services/auth_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthService authService;
  AuthCubit(this.authService) : super(AuthInitial());

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
}
