import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3/models/data.dart';
import 'package:practica3/screens/data_screens.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  String? nombre;
  bool valueSwitch = false;
  double sliderValue = 0.0;
  String? foodRadio;
  bool postreCheck1 = false;
  bool postreCheck2 = false;
  int selectedIndex = 0; //Elemento seleccionado del BottomNavigationBar
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
                ElevatedButton(
                  onPressed: () {
                    Data data = Data(
                        nom: nombre!,
                        flutter: valueSwitch,
                        calif: sliderValue.round(),
                        food: foodRadio!,
                        icecream: postreCheck1,
                        choco: postreCheck2);
                    final ruta2 = MaterialPageRoute(
                      builder: (context) {
                        return DataScreen(datos: data);
                      },
                    );
                    Navigator.push(context, ruta2);
                  },
                  child: const Text(
                    'Guardar',
                  ),
                ),
              ],
            ),
          ),
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
      case 4: //No aplicable en navegadores
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        break;
      default:
    }
    setState(() {
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.ligthTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu Nombre: ',
        labelStyle: AppTheme.ligthTheme.textTheme.headlineLarge,
      ),
      onChanged: (text) {
        nombre = text;
      },
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
            value: 'Tacos al pastor',
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
            value: 'Chiles rellenos',
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
        Checkbox(
            value: postreCheck1,
            onChanged: (value) {
              setState(() {
                postreCheck2 = value!;
              });
            }),
      ],
    );
  }
}
