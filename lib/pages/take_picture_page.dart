import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TakePicturePage extends StatefulWidget {
  final CameraDescription camera;

  TakePicturePage({
    Key? key,
    required this.camera,
  }) : super(key: key);

  @override
  State<TakePicturePage> createState() => _TakePicturePageState();
}

class _TakePicturePageState extends State<TakePicturePage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ota kuva")),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;
            final image = await _controller.takePicture();
            // ignore: use_build_context_synchronously
            await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ShowPicturePage(
                      imagePath: image.path,
                    )));
          } catch (e) {
            // ignore: avoid_print
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}

class ShowPicturePage extends StatelessWidget {
  final String imagePath;
  const ShowPicturePage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Otettu kuva")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.file(File(imagePath)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: savePicShowToast,
        child: const Icon(Icons.save),
      ),
    );
  }

  void savePicShowToast() {
    GallerySaver.saveImage(imagePath);
    Fluttertoast.showToast(
      msg: "Kuva tallennettu",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
    );
  }
}
