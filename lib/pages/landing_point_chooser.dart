import "dart:math";

import "package:flutter/material.dart";

import "../components/info_button.dart";
import "../models/map.dart";
import "../models/landing_point.dart";

class LandingPointChooser extends StatefulWidget {
  const LandingPointChooser({super.key});

  @override
  State<LandingPointChooser> createState() => _LandingPointChooserState();
}

class _LandingPointChooserState extends State<LandingPointChooser> {
  var mapList = <Map>[
    Map("Kings Canyon", "https://apexlegends.fandom.com/wiki/Kings_Canyon", []),
    Map("World's Edge", "https://apexlegends.fandom.com/wiki/World%27s_Edge",
        []),
    Map("Olympus", "https://apexlegends.fandom.com/wiki/Olympus", []),
    Map("Storm Point", "https://apexlegends.fandom.com/wiki/Storm_Point", []),
    Map("Broken Moon", "https://apexlegends.fandom.com/wiki/Broken_Moon", []),
  ];

  Map? selectedMap;
  LandingPoint? selectedLandingPoint;
  bool onMapOnly = false;

  void setSelectedMap(Map? map) {
    setState(() {
      selectedMap = map;
    });
  }

  void setSelectedLandingPoint() {
    if (selectedMap == null) {
      selectedLandingPoint = null;
      return;
    }

    if (selectedMap!.locations.isEmpty) {
      selectedLandingPoint = null;
      return;
    }

    var points = <LandingPoint>[];

    for (var location in selectedMap!.locations) {
      if (onMapOnly && location.isOnMap) {
        points.add(location);
      } else {
        points.add(location);
      }
    }

    var landingPoint = points[Random().nextInt(points.length)];
    setState(() {
      selectedLandingPoint = landingPoint;
    });
  }

  void setOnMapOnly(bool? value) {
    setState(() {
      onMapOnly = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textStyle = theme.textTheme.titleLarge!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Center(
        child: Column(
      children: [
        const Text("Choose a Map"),
        for (var map in mapList)
          ElevatedButton(
            onPressed: () {
              setSelectedMap(map);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: map == selectedMap
                  ? theme.colorScheme.primary
                  : theme.colorScheme.primaryContainer,
              foregroundColor: map == selectedMap
                  ? theme.colorScheme.onPrimary
                  : theme.colorScheme.onPrimaryContainer,
            ),
            child: Text(map.name),
          ),
        const SizedBox(
          height: 20,
        ),
        const Text("Only positions on in-game map?"),
        Checkbox(value: onMapOnly, onChanged: setOnMapOnly),
        const SizedBox(
          height: 20,
        ),
        if (selectedLandingPoint != null)
          Card(
            color: theme.colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(selectedLandingPoint!.name, style: textStyle),
                ],
              ),
            ),
          ),
        if (selectedMap != null)
          InfoButton(
              url: "${selectedMap!.infoUrl}#Locations",
              text: "View map locations",
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.secondary,
                foregroundColor: theme.colorScheme.onSecondary,
              )),
        if (selectedMap != null)
          ElevatedButton.icon(
            onPressed: setSelectedLandingPoint,
            icon: const Icon(Icons.refresh),
            label: const Text("Get Landing Point"),
          )
      ],
    ));
  }
}