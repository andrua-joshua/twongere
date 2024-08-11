import 'package:flutter/material.dart';
import 'package:flutter_better_camera/camera.dart';
import 'package:twongere/route.dart';
import 'package:twongere/routes/camera_sample/test_camera.dart';
import 'package:twongere/routes/settings_screen/settings_screen.dart';

List<CameraDescription> cameras = [];
Future<void> main()async {
   try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twongere',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesGenerator.splashScreen,
      onGenerateRoute: RoutesGenerator.generateRoute,
      // home: const SettingsScreen() //CameraExampleHome(),
    );
  }
}
