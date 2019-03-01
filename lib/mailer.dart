import 'dart:async';

import 'smtp_server.dart';

import 'src/entities.dart';
import 'src/smtp/smtp_client.dart';

export 'src/entities.dart';
export 'legacy.dart';

Future<List<SendReport>> send(Message message, SmtpServer smtpServer,
                             {Duration timeout: const Duration(seconds: 10)}) {
  var client = new SmtpClient(smtpServer);
  return client.send(message, timeout: timeout);
}
