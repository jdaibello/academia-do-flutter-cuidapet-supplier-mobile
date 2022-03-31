import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cuidapet_supplier_mobile/app/core/helpers/logger/logger.dart';
import 'package:cuidapet_supplier_mobile/app/core/helpers/logger/logger_impl.dart';
import 'package:cuidapet_supplier_mobile/app/core/local_storage/flutter_security_storage_local_storage.dart';
import 'package:cuidapet_supplier_mobile/app/core/local_storage/local_storage.dart';
import 'package:cuidapet_supplier_mobile/app/core/local_storage/shared_preferences_local_storage.dart';
import 'package:cuidapet_supplier_mobile/app/core/rest_client/dio/dio_rest_client.dart';
import 'package:cuidapet_supplier_mobile/app/core/rest_client/rest_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<Logger>(
      (i) => LoggerImpl(),
      export: true,
    ),
    Bind.lazySingleton<LocalSecurityStorage>(
      (i) => FlutterSecurityStorageLocalStorage(),
      export: true,
    ),
    Bind.lazySingleton<LocalStorage>(
      (i) => SharedPreferencesLocalStorage(),
      export: true,
    ),
    Bind.factory<RestClient>(
      (i) => DioRestClient(),
      export: true,
    ),
    Bind.factory(
      (i) => FirebaseAuth.instance,
      export: true,
    ),
    Bind.factory(
      (i) => FirebaseMessaging.instance,
      export: true,
    ),
    Bind.factory(
      (i) => FirebaseFirestore.instance,
      export: true,
    ),
  ];
}
