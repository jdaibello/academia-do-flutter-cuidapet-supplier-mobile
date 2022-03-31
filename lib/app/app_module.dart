import 'package:cuidapet_supplier_mobile/app/core/local_storage/local_storage.dart';
import 'package:cuidapet_supplier_mobile/app/core/local_storage/shared_preferences_local_storage.dart';
import 'package:cuidapet_supplier_mobile/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<LocalStorage>((i) => SharedPreferencesLocalStorage()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const HomePage(),
    ),
  ];
}
