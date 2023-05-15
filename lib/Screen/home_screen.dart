import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Tere Bin",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                  onTap: () async {
                    ImagePicker imagePicker = ImagePicker();
                    XFile? file = await imagePicker.pickImage(
                        source: ImageSource.gallery);

                    Reference image = FirebaseStorage.instance.ref();
                    Reference imagefold = image.child("Asad");
                    Reference imageDirectory = image.child("imageUrl");
                    await imageDirectory.getDownloadURL();
                  },
                  child: Icon(Icons.camera_roll)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Builder(builder: (context) {
                return GestureDetector(
                    onTap: () async {
                      final message =
                          SnackBar(content: Text("Loading Pictures"));
                      ScaffoldMessenger.of(context).showSnackBar(message);
                      ImagePicker imagePicker = ImagePicker();
                      XFile? file = await imagePicker.pickImage(
                          source: ImageSource.camera);
                    },
                    child: Icon(Icons.camera_enhance));
              }),
            )
          ],
        ),
        body: Container());
  }
}
