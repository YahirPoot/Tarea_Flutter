import 'package:flutter/material.dart';
import 'package:flutter_application_3/presentation/screens/navigation/fiveActivite/return_data_from_screen.dart';
import 'package:flutter_application_3/presentation/screens/navigation/fourtActivite/name_route.dart';
// import 'package:flutter_application_3/presentation/screens/fourtActivite/name_route.dart';
import 'package:flutter_application_3/presentation/screens/navigation/secondActivite/first_router.dart';
import 'package:flutter_application_3/presentation/screens/navigation/firstActivite/main_screens.dart';
import 'package:flutter_application_3/presentation/screens/navigation/threeActivite/navigation_screens_first.dart';
import 'package:flutter_application_3/presentation/screens/navigation/sixActivite/send_data_a_new_screen.dart';
import 'package:flutter_application_3/presentation/screens/networking/firstActivite/album_fetch.dart';
import 'package:flutter_application_3/presentation/screens/networking/fourthActivite/update_data_over_the_internet.dart';
import 'package:flutter_application_3/presentation/screens/networking/secondActivite/make_authenticate_request.dart';
import 'package:flutter_application_3/presentation/screens/networking/sevenActivite/parse_json.dart';
import 'package:flutter_application_3/presentation/screens/networking/threeActivite/send_data_to_internet.dart';
// import 'package:flutter_application_3/routes/routes_activite2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Flutter Demo';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        home: MyHomePage(title: appTitle)
        // initialRoute: '/',
        // routes: getRoutesApp(),
      );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              margin: EdgeInsets.only(bottom: 20),
              child: Text('Task 3'),
            ),
            ListTile(
              title: const Text('Animate a Widget Across Screens'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              },
            ),
            ListTile(
              title: const Text('Navegation Buttom'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstRouter()));
              },
            ),
            // ! Actividad 4 no hecha aun le faltan cosas NameRoute
            ListTile(
              title: const Text('Navigation Name Route'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NameRoute()));
              },
            ),
            ListTile(
              title: const Text('Navigate with named routes'),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ClassMain()));
              },
            ),
            ListTile(
              title: const Text('Return Data From Screen'),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen2()));
              },
            ),
            ListTile(
              title: const Text('Send Data to a New Screen'),
              selected: _selectedIndex == 5,
              onTap: () {
                _onItemTapped(5);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TodosScreen(
                            todos: List.generate(
                                20,
                                (i) => Todo('Todo $i',
                                    'A description of what be done for Todo $i')))));
              },
            ),
            ListTile(
              title: const Text('Fetch data from the internet'),
              selected: _selectedIndex == 6,
              onTap: () {
                _onItemTapped(6);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlbumActivite()));
              },
            ),
            ListTile(
              title: const Text('Make Authenticated Request'),
              selected: _selectedIndex == 7,
              onTap: () {
                _onItemTapped(7);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlbumActivite2()));
              },
            ),
            ListTile(
              title: const Text('Send Data to the Internet'),
              selected: _selectedIndex == 8,
              onTap: () {
                _onItemTapped(8);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SendDataToInternet()));
              },
            ),
            ListTile(
              title: const Text('Update Data Over the Internet'),
              selected: _selectedIndex == 9,
              onTap: () {
                _onItemTapped(9);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateDataOverInternet()));
              },
            ),
            ListTile(
              title: const Text('Parse JSON in the Background'),
              selected: _selectedIndex == 10,
              onTap: () {
                _onItemTapped(10);
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ParseJsonInTheBackground()));
              },
            )
          ],
        ),
      ),
    );
  }
}
