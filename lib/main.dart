import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  String imagepath = sp.getString('imagepath') ?? '';
  runApp(MyApp(
    imagepath: imagepath,
  ));

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //     overlays: [SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  String imagepath;
  MyApp({
    super.key,
    required this.imagepath,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'movies app',
      home: MyHomePage(),
    );
  }
}


