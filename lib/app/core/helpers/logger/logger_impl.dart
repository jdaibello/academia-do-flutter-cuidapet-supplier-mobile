import 'package:logger/logger.dart' as log;

import 'logger.dart';

class LoggerImpl implements Logger {
  final _logger = log.Logger();
  final List<String> messages = [];

  @override
  void debug(message, [error, StackTrace? stackTrace]) =>
      _logger.d(message, error, stackTrace);

  @override
  void error(message, [error, StackTrace? stackTrace]) =>
      _logger.e(message, error, stackTrace);

  @override
  void info(message, [error, StackTrace? stackTrace]) =>
      _logger.i(message, error, stackTrace);

  @override
  void warning(message, [error, StackTrace? stackTrace]) =>
      _logger.w(message, error, stackTrace);

  @override
  void append(String message) => messages.add(message);

  @override
  void closeAppend() {
    info(messages.join('\n'));
    messages.clear();
  }
}
