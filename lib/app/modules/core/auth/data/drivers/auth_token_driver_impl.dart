import 'package:cuidapet_supplier_mobile/app/core/local_storage/local_storage.dart';
import 'package:cuidapet_supplier_mobile/app/modules/core/auth/infra/drivers/auth_token_driver.dart';

class AuthTokenDriverImpl implements AuthTokenDriver {
  static const accessTokenKey = '/ACCESS_TOKEN_KEY/';

  final LocalStorage _localStorage;

  AuthTokenDriverImpl({required LocalStorage localStorage})
      : _localStorage = localStorage;

  @override
  Future<bool> checkUserLogged() => _localStorage.contains(accessTokenKey);
}
