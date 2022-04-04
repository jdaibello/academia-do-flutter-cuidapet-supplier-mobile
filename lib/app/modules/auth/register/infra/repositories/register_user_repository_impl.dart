import 'package:cuidapet_supplier_mobile/app/core/exceptions/failure_exception.dart';
import 'package:cuidapet_supplier_mobile/app/core/helpers/logger/logger.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/domain/repositories/register_user_repository.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/infra/datasources/register_user_datasource.dart';

class RegisterUserRepositoryImpl implements RegisterUserRepository {
  final RegisterUserDataSource _registerUserDataSource;
  final Logger _logger;

  RegisterUserRepositoryImpl({
    required RegisterUserDataSource registerUserDataSource,
    required Logger logger,
  })  : _registerUserDataSource = registerUserDataSource,
        _logger = logger;

  @override
  Future<bool> ckeckSupplierEmailExists(String email) {
    try {
      return _registerUserDataSource.checkSupplierEmailExists(email);
    } catch (e, s) {
      _logger.error('Erro ao verificar e-mail', e, s);
      throw FailureException('Erro ao verificar e-mail');
    }
  }
}
