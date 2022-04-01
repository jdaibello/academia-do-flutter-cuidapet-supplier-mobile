import 'package:cuidapet_supplier_mobile/app/modules/core/auth/domain/repositories/auth_token_repository.dart';
import 'package:cuidapet_supplier_mobile/app/modules/core/auth/infra/drivers/auth_token_driver.dart';

class AuthTokenRepositoryImpl implements AuthTokenRepository {
  final AuthTokenDriver _authTokenDriver;

  AuthTokenRepositoryImpl({required AuthTokenDriver authTokenDriver})
      : _authTokenDriver = authTokenDriver;

  @override
  Future<bool> checkUserLogged() => _authTokenDriver.checkUserLogged();
}
