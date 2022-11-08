import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:zodiac_signs/Aries.dart';
import 'package:zodiac_signs/Zodiac_map.dart';
import 'package:zodiac_signs/cancer.dart';
import 'package:zodiac_signs/capri.dart';
import 'package:zodiac_signs/gemini.dart';
import 'package:zodiac_signs/home.dart';
import 'package:zodiac_signs/pisces.dart';
import 'package:zodiac_signs/scorpio.dart';
import 'package:zodiac_signs/taurus.dart';

final navigatorkeyy = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(GetMaterialApp(
    home: home_page(),
    routes: {
      "/home": (_) => home_page(),
      "/map": (_) => zodiac_map(),
      "/aries": (_) => aries_Page(),
      "/taurus": (_) => taurus_Page(),
      "/gemini": (_) => gemini_Page(),
      "/cancer": (_) => cancer_Page(),
      "/scorpio": (_) => scorpio_Page(),
      "/capri": (_) => capri_Page(),
      "/pisces": (_) => Pisces_Page(),
    },
    navigatorKey: navigatorkeyy,
  ));
}
