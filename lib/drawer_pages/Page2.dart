import 'package:flutter/material.dart';
import '../drawerapp.dart';
import 'Page1.dart';
import 'Page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grado y Grupo'),
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
                title: Text("Home Page"),
                trailing: Icon(Icons.home),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyApp()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Nombre Alumno"),
                trailing: Icon(Icons.account_box),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Page1()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Cuatrimestre"),
                trailing: Icon(Icons.account_balance_sharp),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Asignatura"),
                trailing: Icon(Icons.ad_units_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Page3()));
                },
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("TI41", style: TextStyle(fontSize: 25),),
      ),
    );
  }
}