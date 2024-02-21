import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Ventana de entradas',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Regresar',
                style: AppTheme.ligthTheme.textTheme.headlineLarge,
              ),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('DataSreen'),
            ),
          ],
        ),
      ],
    );
  }
}
