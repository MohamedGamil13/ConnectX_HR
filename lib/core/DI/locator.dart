import 'package:connectx_hr/core/services/firebase/firebase_auth/firebase_auth_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  //firebase auth service to access signin/signup functions provided by firebase
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
}
