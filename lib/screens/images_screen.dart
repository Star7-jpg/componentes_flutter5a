import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Imágenes',
            style: AppTheme.ligthTheme.textTheme.headlineLarge,
          ),
        ),
        body: ListView(
          children: [
            imageCard(),
            imageWeb(),
          ],
        ));
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const Image(
              image: AssetImage('assets/img/billie.jpg'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Billie Eilish 😍😍😍',
              style: TextStyle(color: Color.fromARGB(235, 220, 90, 30)),
            ),
          )
        ],
      ),
    );
  }

  Widget imageWeb() {
    return Center(
      child: Image.network(
        'https://celebmafia.com/wp-content/uploads/2022/08/billie-eilish-08-22-2022-10.jpg',
      ),
    );
  }
}
