// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
import 'provider/earthquake_provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(
    ChangeNotifierProvider(
      create: (_) => EarthquakeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<int, Color> pokeballRedSwatch = {
      50: Color.fromARGB(255, 24, 1, 105),
      100: Color.fromARGB(255, 255, 88, 88),
      200: Color.fromARGB(255, 255, 88, 88),
      300: Color.fromARGB(255, 255, 88, 88),
      400: Color.fromARGB(255, 255, 88, 88),
      500: Color.fromARGB(255, 255, 88, 88),
      600: Color.fromARGB(255, 255, 88, 88),
      700: Color.fromARGB(255, 255, 88, 88),
      800: Color.fromARGB(255, 255, 88, 88),
      900: Color.fromARGB(255, 252, 70, 70),
    };
    MaterialColor pokeballRed = MaterialColor(0xff08677D, pokeballRedSwatch);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: pokeballRed,
      ),
      builder: EasyLoading.init(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
