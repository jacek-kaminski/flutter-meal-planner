import 'package:flutter/foundation.dart';

enum WeekDay { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

extension WeekDayExtension on WeekDay {
  String get value {
    return describeEnum(this);
  }

  String get shortValue {
    return describeEnum(this).substring(0, 3);
  }
}
