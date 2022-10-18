import 'package:flutter/material.dart';
import 'drawer_pages/Page1.dart';
import 'drawer_pages/Page2.dart';
import 'drawer_pages/Page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Template',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
      darkTheme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación Diseño Apps'),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("Drawer Header"),
                accountEmail: Text("1721110069@utectulancingo.edu.mx")),
            Card(
              child: ListTile(
                title: const Text("Página Principal"),
                trailing: const Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Nombre Alumno"),
                trailing: const Icon(Icons.account_box),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Page1()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Cuatrimestre"),
                trailing: const Icon(Icons.account_balance_sharp),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Page2()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Asignatura"),
                trailing: const Icon(Icons.ad_units_outlined),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Page3()));
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Página Principal', style: TextStyle(fontSize: 30)),
            ],
          ),
        ]),
      ),
    );
  }
}
