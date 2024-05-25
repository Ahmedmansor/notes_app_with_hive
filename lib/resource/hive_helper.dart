import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  // add more initialization code here
}
