import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraViewModel with ChangeNotifier {
  List<CameraDescription> _cameras = [];

  List<CameraDescription> get cameras => List.from(_cameras);

  CameraViewModel() {
    _loadCamera();
  }

  Future<void> _loadCamera() async {
    _cameras = await availableCameras();
    notifyListeners();
  }
}
