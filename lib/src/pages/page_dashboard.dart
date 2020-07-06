import 'package:flutter/material.dart';

import 'package:art/src/components/custom_profile.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248,250,251,1.0),
      body: 
      //ProfilePage(),
      Stack(
        children: <Widget>[
          ProfilePage(),
          _crearRectangulo(),
        ],
      ),
    );
  }

  Widget _crearRectanguloTareas(){
    return Stack(
      children: <Widget>[
        _crearRectangulo(),
        Positioned(
          top: 460.0,
          right: 65.0,
          left: 65.0,
          child: _crearTareasBoton()
        ) 
      ],
    );
  }

  Widget _crearRectangulo(){

    final _screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 28.0),
              width: _screenSize.width * 0.8,
              height: _screenSize.height * 0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                  color: Colors.grey,
                  offset: new Offset(0.3, 0.2),
                  blurRadius: 0.2,
                  spreadRadius: 0.2
                )
              ],
            ),
            child: _crearAccionesRectangulo()
          ),
        ),
      ],
    );
  }

  Widget _crearAccionesRectangulo(){
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Image(
                height: 160.0,
                image: AssetImage('assets/images/Mountains@2x.png'),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 45.0),
            Center(
              child: Image(
                height: 110.0,
                image: AssetImage('assets/images/Grupo38@3x.png'),
              ),
            ),
            SizedBox(height: 20.0),
            Text('Análisis de Riesgo', style: TextStyle(fontSize: 18.5,),),
            Text('de la Tarea', style: TextStyle(fontSize: 18.5,),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: _crearTareasBoton(),
            )
          ],
        ),
        
      ],
    );
  }

  Widget _crearTareasBoton(){
    return RaisedButton(
      shape: StadiumBorder(),
      color: Color.fromRGBO(244,170,0,1.0),
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 38.0,),
      child: Row(
        children: <Widget>[
          Icon(Icons.reply, color: Colors.white, size: 22.0, textDirection: TextDirection.rtl),
          Text('Crear nueva tarea', style: TextStyle(fontSize: 15.5)),
        ],
      ),
      onPressed: () {
          Navigator.pushReplacementNamed(context, 'firststep');
        },
    );
  }

}