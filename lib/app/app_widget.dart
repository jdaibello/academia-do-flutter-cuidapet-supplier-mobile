import 'package:asuka/asuka.dart' as asuka;
import 'package:cuidapet_supplier_mobile/app/core/helpers/environments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(Environments.param('PROJECT_NAME'));

    return ScreenUtilInit(
      designSize: const Size(360, 757),
      builder: () => MaterialApp(
        builder: asuka.builder,
        navigatorObservers: [
          asuka.asukaHeroController,
        ],
      ).modular(),
    );
  }
}
