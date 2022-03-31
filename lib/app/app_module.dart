import 'package:cuidapet_supplier_mobile/app/modules/core/core_module.dart';
import 'package:cuidapet_supplier_mobile/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const HomePage(),
    ),
  ];
}
