import 'package:flutter/material.dart';
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
