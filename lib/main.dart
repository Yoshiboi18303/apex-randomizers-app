import 'package:flutter/material.dart';
import "package:provider/provider.dart";

// Import our app pages
import 'pages/loadout_chooser.dart';
import 'pages/legend_chooser.dart';
import 'pages/landing_point_chooser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyAppState state;

    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      builder: (context, _) {
        state = context.watch<MyAppState>();
        return MaterialApp(
          title: 'Apex Legend Chooser',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                brightness:
                    state.usesDarkMode ? Brightness.dark : Brightness.light,
                seedColor: const Color.fromRGBO(255, 0, 0, 1.0)),
            useMaterial3: true,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}

class MyAppState extends ChangeNotifier {
  var usesDarkMode = false;

  void toggleDarkMode() {
    usesDarkMode = !usesDarkMode;
    notifyListeners();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const LegendChooser();
        break;
      case 1:
        page = const LoadoutChooser();
        break;
      case 2:
        page = const LandingPointChooser();
        break;
      default:
        page = const Center(
          child: NotFoundPage(),
        );
    }

    // Add navigation rail
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SafeArea(
            child: Row(children: [
          NavigationRail(
            extended: constraints.maxWidth >= 600,
            selectedIndex: selectedIndex,
            onDestinationSelected: switchPage,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Legend Chooser'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star),
                label: Text('Loadout Chooser'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.arrow_downward),
                label: Text('Landing Point Chooser'),
              ),
            ],
          ),
          // Display selected page
          Expanded(
            child: Center(
              child: page,
            ),
          ),
        ])),
        floatingActionButton: FloatingActionButton(
            onPressed: appState.toggleDarkMode,
            child: Icon(
                appState.usesDarkMode ? Icons.light_mode : Icons.dark_mode)),
      );
    });
  }

  void switchPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Container(
      color: theme.primaryColor,
      child: Center(
        child: Text(
          'Page not found',
          style: style,
        ),
      ),
    );
  }
}
