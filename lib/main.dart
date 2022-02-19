import 'package:camera/camera.dart';
import 'package:f_plugin/take_picture_screen.dart';
import 'package:f_plugin/video_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Video player demo', home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => VideoScreen(),
              ),
            );
          },
          child: const Text('Video'),
        ),
        ElevatedButton(
          onPressed: () async {
            final cameras = await availableCameras();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => TakePictureScreen(
                  camera: cameras.first,
                ),
              ),
            );
          },
          child: const Text('Photo'),
        ),
      ],
    );
  }
}
