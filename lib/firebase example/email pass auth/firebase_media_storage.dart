import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBaRDRmnBevvAt4MOm2h1-GAhOWdFZkxZI",
          appId: "1:767486018223:android:69255678ca42e881478a5a",
          messagingSenderId: "",
          projectId: "fir-project-a30f7"));
}

class FireMediastorage extends StatefulWidget {
  const FireMediastorage({super.key});

  @override
  State<FireMediastorage> createState() => _FireMediastorageState();
}

class _FireMediastorageState extends State<FireMediastorage> {
  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stored media"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                    onPressed: () => upload('camera'),
                    icon: Icon(Icons.camera_alt_outlined),
                    label: Text("Camera")),
                ElevatedButton.icon(
                    onPressed: () => upload('gallery'),
                    icon: Icon(Icons.photo),
                    label: Text("Gallery")),
              ],
            ),
            Expanded(
                child: FutureBuilder(
                    //is firebase connection is succuss load data or media  from firebase
                    future: loadmedia(),
                    builder: (context,
                        AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView.builder(
                            itemCount: snapshot.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              final Map<String, dynamic> image =
                                  snapshot.data![index];
                              return Card(
                                child: ListTile(
                                  leading: Image.network(image['url']),
                                  title: Text(image['uploadBy']),
                                  subtitle: Text(image['description']),
                                  trailing: IconButton(
                                      onPressed: () =>
                                          deleteMedia(image['path']),
                                      icon: Icon(Icons.delete)),
                                ),
                              );
                            });
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  Future<void> upload(String imagesource) async {
    final picker = ImagePicker();
    XFile? pickedImage;
    try {
      pickedImage = await picker.pickImage(
          source: imagesource == 'camera'
              ? ImageSource.camera
              : ImageSource.gallery,
          maxWidth: 1920);
      final String filename = path.basename(pickedImage!.path);
      File imagefile = File(pickedImage.path);
      try {
        await storage.ref(filename).putFile(
            imagefile,
            SettableMetadata(customMetadata: {
              'uploadedBy': "Its Me Xxxx",
              'description': "Some Description"
            }));
        setState(() {});
      } on FirebaseException catch (error) {
        print(error);
      }
    } catch (error) {
      print(error);
    }
  }

  Future<List<Map<String, dynamic>>> loadmedia() async {
    List<Map<String, dynamic>> images = [];
    final ListResult result = await storage.ref().list();
    final List<Reference> allfiles = result.items;
    await Future.forEach(allfiles, (singlefile) async {
      final String fileUrl = await singlefile.getDownloadURL();
      final FullMetadata metadata = await singlefile.getMetadata();

      images.add({
        'imageurl ': fileUrl,
        'path': singlefile.fullPath,
        'uploadBy': metadata.customMetadata?['uploadedBy'] ?? 'No data',
        'description':
            metadata.customMetadata?['description'] ?? 'No description',
      });
    });
    return images;
  }

  Future<void> deleteMedia(String imagepath) async {
    await storage.ref(imagepath).delete();
    setState(() {});
  }
}
