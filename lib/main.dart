import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shopat/Screens/home.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final envString = await rootBundle.loadString('assets/.env');
  // await dotenv.load(fileName: envString);

  await dotenv.load(fileName: ".env.prod");

  runApp(const Shopat());
}

class Shopat extends StatelessWidget {
  const Shopat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
