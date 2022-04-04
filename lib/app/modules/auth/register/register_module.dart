import 'package:cuidapet_supplier_mobile/app/modules/auth/register/data/datasources/register_user_datasource_impl.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/domain/repositories/register_user_repository.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/domain/usecases/check_supplier_email_exists_usecase_impl.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/infra/datasources/register_user_datasource.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/infra/repositories/register_user_repository_impl.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/presenter/controller/register_controller.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/presenter/usecases/check_supplier_email_exists_usecase.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/ui/register_page.dart';
import 'package:cuidapet_supplier_mobile/app/modules/auth/register/ui/steps/one/controller/register_step_one_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => RegisterController(),
    ),
    Bind.lazySingleton<RegisterUserDataSource>(
      (i) => RegisterUserDataSourceImpl(
        restClient: i(),
        logger: i(),
      ),
    ),
    Bind.lazySingleton<RegisterUserRepository>(
      (i) => RegisterUserRepositoryImpl(
        registerUserDataSource: i(),
        logger: i(),
      ),
    ),
    Bind.lazySingleton<CheckSupplierEmailExistsUseCase>(
      (i) => CheckSupplierEmailExistsUseCaseImpl(
        registerUserRepository: i(),
      ),
    ),
    Bind.factory(
      (i) => RegisterStepOneController(
        checkEmailExists: i(),
        registerController: i(),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => RegisterPage(
        controller: Modular.get(),
        registerStepOneController: Modular.get(),
      ),
    ),
  ];
}
