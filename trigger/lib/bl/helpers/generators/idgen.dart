import 'package:uuid/uuid.dart';

String generarUUID() {
  const uuid = Uuid();
  return uuid.v4();
}
