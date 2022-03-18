import 'package:uuid/uuid.dart';

class UuidGenerate {
  static const uuid = Uuid();
  static String newUuid() => uuid.v1();
}
