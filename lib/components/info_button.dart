import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class InfoButton extends StatelessWidget {
  const InfoButton(
      {super.key,
      required this.url,
      this.text = "View Info",
      this.mode = LaunchMode.platformDefault,
      this.style});

  final String url;
  final String text;
  final LaunchMode mode;
  final ButtonStyle? style;

  void launchBtnUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      launchUrl(url, mode: mode);
      return null;
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => launchBtnUrl(Uri.parse(url)),
      icon: const Icon(Icons.info),
      label: Text(text),
      style: style,
    );
  }
}
