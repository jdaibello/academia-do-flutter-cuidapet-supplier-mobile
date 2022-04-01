import 'package:bloc/bloc.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/home/presenter/controller/auth_home_state.dart';
import 'package:cuidapet_supplier_mobile/app/modules/core/auth/presenter/usecases/check_user_logged_use_case.dart';

class AuthHomeController extends Cubit<AuthHomeState> {
  final CheckUserLoggedUseCase _checkUserLoggedUseCase;

  AuthHomeController({
    required CheckUserLoggedUseCase checkUserLoggedUseCase,
  })  : _checkUserLoggedUseCase = checkUserLoggedUseCase,
        super(AuthHomeState.initial());

  Future<void> checkIsLogged() async {
    final userLogged = await _checkUserLoggedUseCase.execute();

    if (userLogged) {
      emit(AuthHomeState(userLoggedStatus: AuthStatus.logged));
    } else {
      emit(AuthHomeState(userLoggedStatus: AuthStatus.unlogged));
    }
  }
}
