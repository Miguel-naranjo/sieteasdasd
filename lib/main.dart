import 'package:flutter/material.dart';
import 'package:naranjo/pages/first_pages.dart';
import 'package:naranjo/pages/second_pages.dart';
import 'package:naranjo/pages/third_pages.dart';

void main() => runApp(NaranjoApp());

class NaranjoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamburguesa de naranjo',
      home: PaginaInicio(),
    ); //fin materialapp
  }
} //fin clase naranjoapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //fin inicio clase con estado

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());

        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //fin de switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.amber, size: 30.0), //icon
            title: Text('INICIO')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined, color: Colors.red, size: 30.0), //icon
            title: Text('CONTACTO')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_outlined, color: Colors.purple, size: 30.0), //icon
            title: Text('EMPRESA')), //Icons.restaurant_outlined
      ]), // bottom
    ); //fin de scaffold
  } //fin de widget
} //fin de paginainiciostate
