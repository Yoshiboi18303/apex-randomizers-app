import "dart:math";
import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

import "../components/info_button.dart";
import "../models/legend.dart";

class LegendChooser extends StatefulWidget {
  const LegendChooser({super.key});

  @override
  State<LegendChooser> createState() => _LegendChooserState();
}

class _LegendChooserState extends State<LegendChooser> {
  // WARNING: DO NOT MODIFY THE POSITIONS OR THE VALUES OF THESE LISTS.
  var allowedTypes = <bool>[
    true, // Assault
    true, // Skirmisher
    true, // Recon
    true, // Support
    true, // Controller
  ];
  var legendList = <List<Legend>>[
    [
      Legend("https://apexlegends.fandom.com/wiki/Bangalore", "Bangalore"),
      Legend("https://apexlegends.fandom.com/wiki/Fuse", "Fuse"),
      Legend("https://apexlegends.fandom.com/wiki/Ash", "Ash"),
      Legend("https://apexlegends.fandom.com/wiki/Mad_Maggie", "Mad Maggie"),
      Legend("https://apexlegends.fandom.com/wiki/Ballistic", "Ballistic"),
    ],
    [
      Legend("https://apexlegends.fandom.com/wiki/Pathfinder", "Pathfinder"),
      Legend("https://apexlegends.fandom.com/wiki/Wraith", "Wraith"),
      Legend("https://apexlegends.fandom.com/wiki/Octane", "Octane"),
      Legend("https://apexlegends.fandom.com/wiki/Revenant", "Revenant"),
      Legend("https://apexlegends.fandom.com/wiki/Horizon", "Horizon"),
      Legend("https://apexlegends.fandom.com/wiki/Valkyrie", "Valkyrie"),
    ],
    [
      Legend("https://apexlegends.fandom.com/wiki/Bloodhound", "Bloodhound"),
      Legend("https://apexlegends.fandom.com/wiki/Crypto", "Crypto"),
      Legend("https://apexlegends.fandom.com/wiki/Seer", "Seer"),
      Legend("https://apexlegends.fandom.com/wiki/Vantage", "Vantage"),
    ],
    [
      Legend("https://apexlegends.fandom.com/wiki/Gibraltar", "Gibraltar"),
      Legend("https://apexlegends.fandom.com/wiki/Lifeline", "Lifeline"),
      Legend("https://apexlegends.fandom.com/wiki/Mirage", "Mirage"),
      Legend("https://apexlegends.fandom.com/wiki/Loba", "Loba"),
      Legend("https://apexlegends.fandom.com/wiki/Newcastle", "Newcastle"),
      Legend("https://apexlegends.fandom.com/wiki/Conduit", "Conduit"),
    ],
    [
      Legend("https://apexlegends.fandom.com/wiki/Caustic", "Caustic"),
      Legend("https://apexlegends.fandom.com/wiki/Wattson", "Wattson"),
      Legend("https://apexlegends.fandom.com/wiki/Rampart", "Rampart"),
      Legend("https://apexlegends.fandom.com/wiki/Catalyst", "Catalyst"),
    ],
  ];

  Legend? selectedLegend;
  bool hasExecutedOnce = false;
  final double paddingValue = 5;

  void toggleType(int index) {
    setState(() {
      allowedTypes[index] = !allowedTypes[index];
    });
  }

  void getLegend() {
    if (!hasExecutedOnce) hasExecutedOnce = true;

    var legends = <Legend>[];

    for (int i = 0; i < allowedTypes.length; i++) {
      if (allowedTypes[i]) {
        legends.addAll(legendList[i]);
      }
    }

    if (legends.isEmpty) {
      setState(() {
        selectedLegend = null;
      });
      return;
    }

    setState(() {
      selectedLegend = legends[Random().nextInt(legends.length)];
    });
  }

  void openLegend(Uri url) async {
    if (selectedLegend == null) {
      return;
    }

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var legendNameTheme = theme.textTheme.titleLarge!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    try {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Assault", style: theme.textTheme.labelLarge),
                    Checkbox(
                      value: allowedTypes[0],
                      onChanged: (value) {
                        toggleType(0);
                      },
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(paddingValue)),
                Column(
                  children: [
                    Text("Skirmisher", style: theme.textTheme.labelLarge),
                    Checkbox(
                      value: allowedTypes[1],
                      onChanged: (value) {
                        toggleType(1);
                      },
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(paddingValue)),
                Column(children: [
                  Text("Recon", style: theme.textTheme.labelLarge),
                  Checkbox(
                    value: allowedTypes[2],
                    onChanged: (value) {
                      toggleType(2);
                    },
                  ),
                ]),
                Padding(padding: EdgeInsets.all(paddingValue)),
                Column(
                  children: [
                    Text("Support", style: theme.textTheme.labelLarge),
                    Checkbox(
                      value: allowedTypes[3],
                      onChanged: (value) {
                        toggleType(3);
                      },
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(paddingValue)),
                Column(children: [
                  Text("Controller", style: theme.textTheme.labelLarge),
                  Checkbox(
                    value: allowedTypes[4],
                    onChanged: (value) {
                      toggleType(4);
                    },
                  ),
                ])
              ],
            ),
          ),
          const SizedBox(height: 15),
          if (selectedLegend != null)
            Card(
              color: theme.colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Text(selectedLegend!.name, style: legendNameTheme),
                  const SizedBox(height: 10),
                  InfoButton(url: selectedLegend!.infoUrl),
                ]),
              ),
            ),
          const SizedBox(height: 15),
          ElevatedButton.icon(
            onPressed: getLegend,
            icon: const Icon(Icons.refresh),
            label: Text("${hasExecutedOnce ? "Refresh" : "Get"} Legend"),
          )
        ],
      ));
    } catch (e) {
      return ErrorWidget(e);
    }
  }
}
