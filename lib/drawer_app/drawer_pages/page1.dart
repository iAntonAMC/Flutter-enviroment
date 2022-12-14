import 'package:flutter/material.dart';
import '../drawerapp.dart';
import 'page2.dart';
import 'page3.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre'),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("Drawer Aplication"),
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
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Cuatrimestre"),
                trailing: Icon(Icons.account_balance_sharp),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Page2()));
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
        child: Text("Cristian Daniel", style: TextStyle(fontSize: 25),),
      ),
    );
  }
}