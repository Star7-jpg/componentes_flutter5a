import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int selectedIndex = 0;
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => openScreen(context, index),
        backgroundColor: AppTheme.primaryColor,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(
              Icons.home,
              color: AppTheme.backColor,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imágenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir',
          ),
        ],
      ),
    );
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

  openScreen(BuildContext context, int index) {
    MaterialPageRoute ruta =
        MaterialPageRoute(builder: (context) => const HomeScreen());
    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(builder: (context) => const InfiniteList());
        break;
      case 2:
        ruta = MaterialPageRoute(builder: (context) => const Notifications());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
        break;
      default:
    }
    setState(() {
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }
}
