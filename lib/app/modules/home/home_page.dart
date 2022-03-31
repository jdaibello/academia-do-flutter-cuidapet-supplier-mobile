import 'package:cuidapet_supplier_mobile/app/core/helpers/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger logger = Modular.get();
    logger.info('Olá HomePage');
    logger.debug('Olá Debug');
    logger.error('Olá Erro');
    logger.warning('Olá Aviso');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
