import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'services/user_service.dart';

final locator = GetIt.instance;

init() {
  locator.registerLazySingleton<AuthService>(
    () => AuthService(
      auth: FirebaseAuth.instance,
      userService: locator(),
    ),
  );
  locator.registerLazySingleton(() => UserService(locator()));
  locator.registerLazySingleton(() => FirebaseAuth.instance);
  locator.registerLazySingleton(() => FirebaseFirestore.instance);
  locator.registerLazySingleton(() => AuthCubit(locator()));
}
