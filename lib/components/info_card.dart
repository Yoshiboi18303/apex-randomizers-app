import "package:flutter/material.dart";
import "./info_button.dart";

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.name,
      required this.infoUrl,
      this.btnLabel = "View Info",
      this.btnStyle,
      this.cardColor,
      this.textStyle});

  final String name;
  final String infoUrl;
  final String btnLabel;
  final ButtonStyle? btnStyle;
  final Color? cardColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(name, style: textStyle),
            const SizedBox(height: 15),
            InfoButton(
              url: infoUrl,
              text: btnLabel,
              style: btnStyle,
            ),
          ],
        ),
      ),
    );
  }
}
