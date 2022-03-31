import 'package:cuidapet_supplier_mobile/app/core/local_storage/i_local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ILocalStorage localStorage = Modular.get();
    localStorage.write<String>('X', '1234');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
