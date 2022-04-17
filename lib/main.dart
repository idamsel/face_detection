import 'package:camera/camera.dart';
import 'package:face_detection/homescreen.dart';
import 'package:flutter/material.dart';

List<CameraDescription>? camera;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  camera  = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Face Detection',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomeScreen(),
    );
  }
}

