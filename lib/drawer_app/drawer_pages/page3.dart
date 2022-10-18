import 'package:flutter/material.dart';
import '../drawerapp.dart';
import 'page1.dart';
import 'page2.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asignatura'),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Page2()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Asignatura"),
                trailing: Icon(Icons.ad_units_outlined),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Diseño de Apps", style: TextStyle(fontSize: 25),),
      ),
    );
  }
}
