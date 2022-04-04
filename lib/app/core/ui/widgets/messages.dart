import 'package:asuka/asuka.dart';

class Messages {
  Messages._();

  static alert(String message) {
    AsukaSnackbar.alert(message).show();
  }
}
