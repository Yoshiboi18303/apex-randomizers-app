import "dart:math";

import "package:flutter/material.dart";

import "../models/weapon.dart";
import "../components/info_button.dart";
import "../lists.dart";

class LoadoutChooser extends StatefulWidget {
  const LoadoutChooser({super.key});

  @override
  State<LoadoutChooser> createState() => _LoadoutChooserState();
}

class _LoadoutChooserState extends State<LoadoutChooser> {
  var allowedAmmoTypes = <bool>[
    true, // Light
    true, // Heavy
    true, // Energy
    true, // Shotgun
    true, // Sniper
  ];
  var specialWeaponsAllowed = false;
  List<Weapon>? selectedLoadout;
  double paddingValue = 5;

  void toggleType(int index) {
    setState(() {
      allowedAmmoTypes[index] = !allowedAmmoTypes[index];
    });
  }

  void toggleSpecialWeapons() {
    setState(() {
      specialWeaponsAllowed = !specialWeaponsAllowed;
    });
  }

  void getLoadout() {
    var weapons = <Weapon>[];
    var loadout = <Weapon>[];

    for (int i = 0; i < allowedAmmoTypes.length; i++) {
      if (allowedAmmoTypes[i]) {
        weapons.addAll(weaponList[i]);
      }
    }

    if (specialWeaponsAllowed) {
      weapons.addAll(specialWeapons);
    }

    if (weapons.isEmpty) {
      setState(() {
        selectedLoadout = null;
      });
      return;
    }

    while (loadout.length < 2) {
      loadout.add(weapons[Random().nextInt(weapons.length)]);
    }

    setState(() {
      selectedLoadout = loadout;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Row(children: [
          Column(children: [
            Text("Light", style: theme.textTheme.labelLarge),
            Checkbox(
              value: allowedAmmoTypes[0],
              onChanged: (_) {
                toggleType(0);
              },
            )
          ]),
          Padding(padding: EdgeInsets.all(paddingValue)),
          Column(children: [
            Text("Heavy", style: theme.textTheme.labelLarge),
            Checkbox(
              value: allowedAmmoTypes[1],
              onChanged: (_) {
                toggleType(1);
              },
            )
          ]),
          Padding(padding: EdgeInsets.all(paddingValue)),
          Column(children: [
            Text("Energy", style: theme.textTheme.labelLarge),
            Checkbox(
              value: allowedAmmoTypes[2],
              onChanged: (_) {
                toggleType(2);
              },
            )
          ]),
          Padding(padding: EdgeInsets.all(paddingValue)),
          Column(children: [
            Text("Shotgun", style: theme.textTheme.labelLarge),
            Checkbox(
              value: allowedAmmoTypes[3],
              onChanged: (_) {
                toggleType(3);
              },
            )
          ]),
          Padding(padding: EdgeInsets.all(paddingValue)),
          Column(children: [
            Text("Sniper", style: theme.textTheme.labelLarge),
            Checkbox(
              value: allowedAmmoTypes[4],
              onChanged: (_) {
                toggleType(4);
              },
            )
          ]),
        ])),
        const SizedBox(height: 15),
        Text("Allow care package weapons?",
            style: theme.textTheme.labelLarge!.copyWith(fontSize: 20)),
        Checkbox(
            value: specialWeaponsAllowed,
            onChanged: (_) {
              toggleSpecialWeapons();
            }),
        const SizedBox(height: 15),
        if (selectedLoadout != null)
          Row(
            children: [
              for (var weapon in selectedLoadout!)
                Card(
                  color: theme.colorScheme.primary,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text(weapon.name,
                                style: theme.textTheme.titleLarge!.copyWith(
                                    color: theme.colorScheme.onPrimary)),
                            const SizedBox(height: 20),
                            InfoButton(
                                url: weapon.infoUrl,
                                style: weapon == selectedLoadout!.last
                                    ? ElevatedButton.styleFrom(
                                        backgroundColor:
                                            theme.colorScheme.secondary,
                                        foregroundColor:
                                            theme.colorScheme.onSecondary)
                                    : null)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        const SizedBox(height: 15),
        ElevatedButton.icon(
          icon: const Icon(Icons.refresh),
          onPressed: getLoadout,
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.primary,
            foregroundColor: theme.colorScheme.onPrimary,
          ),
          label: const Text("Get Loadout"),
        ),
      ]),
    );
  }
}
