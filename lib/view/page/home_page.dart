import 'package:camera_detect/view/widget/camera_screen.dart';
import 'package:camera_detect/view_model/camera_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CameraViewModel>(builder: (context, value, child) {
      if (value.cameras.isNotEmpty) {
        return CameraScreen(camera: value.cameras.first);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
