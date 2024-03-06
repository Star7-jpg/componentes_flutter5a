import 'package:flutter/material.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/inputs.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App de componentes de flutter',
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Entradas',
              // style: Theme.of(context).textTheme.headlineLarge,
              style: AppTheme.ligthTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Recuperar información de TextField',
              style: AppTheme.ligthTheme.textTheme.bodySmall,
            ),
            leading: const Icon(
              Icons.input_rounded,
              color: AppTheme.primaryColor,
            ),
            trailing: const Icon(
              Icons.arrow_right_alt_outlined,
              color: AppTheme.primaryColor,
            ),
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context) {
                return const Inputs();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Lista infinita',
              style: AppTheme.ligthTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Recuperar muchos elementos',
              style: AppTheme.ligthTheme.textTheme.bodySmall,
            ),
            leading: const Icon(
              Icons.list_alt_sharp,
              color: AppTheme.primaryColor,
            ),
            trailing: const Icon(
              Icons.arrow_right_alt_outlined,
              color: AppTheme.primaryColor,
            ),
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context) {
                return const InfiniteList();
              });
              Navigator.push(context, ruta2);
            },
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Notificaciones',
              style: AppTheme.ligthTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Manejo de notificaciones',
              style: AppTheme.ligthTheme.textTheme.bodySmall,
            ),
            leading: const Icon(
              Icons.notification_important,
              color: AppTheme.primaryColor,
            ),
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context) {
                return const Notifications();
              });
              Navigator.push(context, ruta3);
            },
            trailing: const Icon(
              Icons.arrow_right_alt_outlined,
              color: AppTheme.primaryColor,
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Imágenes',
              style: AppTheme.ligthTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Widget de manipulación de imágenes',
              style: AppTheme.ligthTheme.textTheme.bodySmall,
            ),
            leading: const Icon(
              Icons.image,
              color: AppTheme.primaryColor,
            ),
            onTap: () {
              final ruta4 = MaterialPageRoute(builder: (context) {
                return const ImagesScreen();
              });
              Navigator.push(context, ruta4);
            },
            trailing: const Icon(
              Icons.arrow_right_alt_outlined,
              color: AppTheme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
