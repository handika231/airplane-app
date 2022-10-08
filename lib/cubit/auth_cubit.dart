import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../domain/models/user.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future signUp() async {
    emit(AuthLoading());
    try {
      UserModel user = const UserModel(
        id: 'id',
        name: 'name',
        email: 'email',
        hobby: 'hobby',
        balance: 28000000,
      );
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}
