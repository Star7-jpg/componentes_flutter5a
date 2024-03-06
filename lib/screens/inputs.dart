import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  double sliderValue = 0.0;
  bool valueSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Entradas',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradasSlider(),
            const ElevatedButton(
              //style: AppTheme.ligthTheme.elevatedButtonTheme,
              //Tarea realizar el código para pasar al DataSreen
              onPressed: null,
              child: Text(
                'DataSreen',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.next_plan), label: 'Datos'),
        ],
      ),
    );
  }

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.ligthTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre',
        labelStyle: AppTheme.ligthTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: [
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        Switch(
            value: valueSwitch,
            onChanged: (value) {
              setState(() {
                valueSwitch = value;
              });
            })
      ],
    );
  }

  Column entradasSlider() {
    return Column(
      children: [
        Text(
          '¿Qué tanto te gusta flutter',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        Slider(
            divisions: 10,
            min: 0.0,
            max: 10.0,
            value: sliderValue,
            label: '${sliderValue.round()}',
            onChanged: (value) {
              setState(() {
                sliderValue = value;
                // print('Valor del slider: $sliderValue');
              });
            })
      ],
    );
  }
}
