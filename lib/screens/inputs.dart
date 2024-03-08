import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  bool valueSwitch = false;
  double sliderValue = 0.0;
  int foodRadio = 0;
  bool postreCheck1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Entradas',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                entradaTexto(),
                entradaSwitch(),
                entradaSlider(),
                entradasRadio(),
                Text(
                  '¿Que postres te gustan?',
                  style: AppTheme.ligthTheme.textTheme.headlineLarge,
                ),
                entradasCheck(),
                const ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'Guardar',
                    )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.next_plan),
          label: 'Datos',
        )
      ]),
    );
  }

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.ligthTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu Nombre: ',
        labelStyle: AppTheme.ligthTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: [
        const FlutterLogo(),
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
            }),
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Que tanto te gusta flutter?',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        Slider(
            min: 0.0,
            max: 10.0,
            value: sliderValue,
            divisions: 10,
            label: '${sliderValue.round()}',
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            }),
      ],
    );
  }

  Column entradasRadio() {
    return Column(
      children: [
        Text(
          '¿Que prefiere?',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Tacos al pastor',
            style: AppTheme.ligthTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 1,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Chiles Rellenos',
            style: AppTheme.ligthTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 2,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });
            },
          ),
        ),
      ],
    );
  }

  Row entradasCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Helado',
          style: AppTheme.ligthTheme.textTheme.bodySmall,
        ),
        Checkbox(
            value: postreCheck1,
            onChanged: (value) {
              setState(() {
                postreCheck1 = value!;
              });
            }),
        Text(
          'Chocoflan',
          style: AppTheme.ligthTheme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
