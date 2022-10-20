import 'package:flutter/material.dart';
import 'package:gitpod_flutter_quickstart/drawer_app/drawerapp.dart';
import 'custombutton.dart';
import 'customtextfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: const Text("Formulario"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.only(top: 40)),
          Column(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/550x/47/50/e3/4750e36f76f03e6b149e890bdefc2b74.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: prefer_const_constructors
              Divider(
                color: Colors.greenAccent,
                thickness: 10,
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                  key: _formkey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CustomTextField(
                          textHint: "Email",
                          icono: Icon(Icons.email),
                          validator: _nonemptyvalidator),
                      MaterialButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {}
                        },
                        color: Colors.teal,
                        child: const Text("Validar"),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}

String? _nonemptyvalidator(String? value) {
  return value!.isEmpty ? "El campo no puede quedar vacío" : null;
}
