import 'package:cuidapet_supplier_mobile/app/modules/core/auth/domain/repositories/auth_token_repository.dart';
import 'package:cuidapet_supplier_mobile/app/modules/core/auth/presenter/usecases/check_user_logged_use_case.dart';

class CheckUserLoggedUseCaseImpl implements CheckUserLoggedUseCase {
  final AuthTokenRepository _authTokenRepository;

  CheckUserLoggedUseCaseImpl({
    required AuthTokenRepository authTokenRepository,
  }) : _authTokenRepository = authTokenRepository;

  @override
  Future<bool> execute() async => _authTokenRepository.checkUserLogged();
}
