import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const String name = 'uicontrols_screen';

  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

bool isDeveloper = true;
Transportation selectedTransportation = Transportation.car;
bool wantsBreakfast = false;
bool wantsLunch = false;
bool wantsDinner = false;

class _UiControlsViewState extends State<_UiControlsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) {
            isDeveloper = !isDeveloper;
            setState(() {});
          },
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By car'),
                subtitle: const Text('Viajar por carro'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.boat;
                });
              },
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.plane;
                });
              },
            ),
            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar por submarine'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.submarine;
                });
              },
            ),
          ],
        ),
        CheckboxListTile(
          value: wantsBreakfast,
          title: const Text('¿Desayuno?'),
          subtitle: const Text('Huevos,Pan,Café'),
          onChanged: (value) {
            wantsBreakfast = !wantsBreakfast;
            setState(() {});
          },
        ),
        CheckboxListTile(
          value: wantsLunch,
          title: const Text('¿Almuerzo?'),
          subtitle: const Text('Carne,Papas,agua'),
          onChanged: (value) {
            wantsLunch = !wantsLunch;
            setState(() {});
          },
        ),
        CheckboxListTile(
          value: wantsDinner,
          title: const Text('¿Cena?'),
          subtitle: const Text('Pollo,Ensalada,arroz'),
          onChanged: (value) {
            wantsDinner = !wantsDinner;
            setState(() {});
          },
        )
      ],
    );
  }
}
