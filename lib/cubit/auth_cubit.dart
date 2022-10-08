import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../domain/models/user.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
