import 'package:cuidapet_supplier_mobile/app/core/helpers/logger/logger.dart';
import 'package:cuidapet_supplier_mobile/app/core/helpers/logger/logger_impl.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger logger = LoggerImpl();
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
