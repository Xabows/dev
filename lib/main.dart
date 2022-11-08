import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:zodiac_signs/greeks/Aries.dart';
import 'package:zodiac_signs/greeks/leo.dart';
import 'package:zodiac_signs/home.dart';

import 'greeks/Zodiac_map.dart';
import 'greeks/cancer.dart';
import 'greeks/capri.dart';
import 'greeks/gemini.dart';
import 'greeks/libra.dart';
import 'greeks/pisces.dart';
import 'greeks/scorpio.dart';
import 'greeks/taurus.dart';
import 'greeks/virgo.dart';

final navigatorkeyy = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(GetMaterialApp(
    home: home_page(),
    routes: {
      "/home": (_) => home_page(),
      "/zgmap": (_) => zodiac_map(),
      "/aries": (_) => aries_Page(),
      "/taurus": (_) => taurus_Page(),
      "/gemini": (_) => gemini_Page(),
      "/cancer": (_) => cancer_Page(),
      "/leo": (_) => leo_Page(),
      "/libra": (_) => libra_Page(),
      "/virgo": (_) => virgo_Page(),
      "/scorpio": (_) => scorpio_Page(),
      // "/sagitt": (_) => sagitarius_Page(),
      "/capri": (_) => capri_Page(),
      //"/aqua": (_) => aquarius_Page(),
      "/pisces": (_) => Pisces_Page(),
    },
    navigatorKey: navigatorkeyy,
  ));
}
