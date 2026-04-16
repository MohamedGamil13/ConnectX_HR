import 'package:bloc/bloc.dart';
import 'package:connectx_hr/core/DI/locator.dart';
import 'package:connectx_hr/core/services/firebase/firebase_auth/firebase_auth_service.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  Future<void> signIn(String emailAddress, String password) async {
    emit(AuthLoading());
    try {
      await getIt<FirebaseAuthService>().signIn(emailAddress, password);
      emit(AuthSucess());
    } on Exception catch (e) {
      emit(AuthFaliure(errorMessage: e.toString()));
    }
  }

  Future<void> signUp(String emailAddress, String password) async {
    emit(AuthLoading());
    try {
      await getIt<FirebaseAuthService>().signUp(emailAddress, password);
      emit(AuthSucess());
    } on Exception catch (e) {
      emit(AuthFaliure(errorMessage: e.toString()));
    }
  }
}
