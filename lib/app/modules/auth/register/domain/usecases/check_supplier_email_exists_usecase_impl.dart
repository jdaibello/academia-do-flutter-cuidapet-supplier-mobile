import 'package:cuidapet_supplier_mobile/app/modules/auth/register/domain/repositories/register_user_repository.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/presenter/usecases/check_supplier_email_exists_usecase.dart';

class CheckSupplierEmailExistsUseCaseImpl
    implements CheckSupplierEmailExistsUseCase {
  final RegisterUserRepository _registerUserRepository;

  CheckSupplierEmailExistsUseCaseImpl({
    required RegisterUserRepository registerUserRepository,
  }) : _registerUserRepository = registerUserRepository;

  @override
  Future<bool> execute(String email) async =>
      _registerUserRepository.ckeckSupplierEmailExists(email);
}
