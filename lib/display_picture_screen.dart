import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  const DisplayPictureScreen({
    Key? key,
    required this.imgPath,
  }) : super(key: key);

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display'),
      ),
      body: kIsWeb ? Image.network(imgPath) : Image.file(File(imgPath)),
    );
  }
}
