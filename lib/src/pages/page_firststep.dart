import 'package:flutter/material.dart';

import 'package:art/src/components/custom_appbar.dart';
import 'package:art/src/components/custom_botonsiguiente.dart';

class FirstStepPage extends StatefulWidget {
  @override
  _FirstStepPageState createState() => _FirstStepPageState();
}

class _FirstStepPageState extends State<FirstStepPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242,242,242, 1.0),
      appBar: MyCustomAppBar(
        titulo: 'Detalles del trabajo a relizar',
        paso: 'Paso 1',
        height: 83,
        heightbar: 45,
        color: Color.fromRGBO(242,242,242, 1.0),
        contador: '',
        ruta: 'dashboard',
      ),
      body: Stack( 
        children: <Widget>[
         _crearAcciones(context),
        ],
      ),
    );
  }

  Widget _crearOptLimpieza(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      height: 43.0,
      width: 370,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Limpieza CPS",
          hintStyle: TextStyle(color: Color.fromRGBO(54,66,74, 0.6), fontSize: 14.0,),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
            BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            offset: new Offset(1.5, 3),
            blurRadius: 0.1,
            spreadRadius: 0.1
          )
        ],
      ),
    ); 
  }

  Widget _crearCuadrilla(){
    return Container(
      height: 140.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          _agregarCuadrilla(),
          SizedBox(height: 17.0),
          _avatarsCuadrilla()
        ],
      ),
    ); 
  }

  Widget _agregarCuadrilla(){
    return Container(
      margin: EdgeInsets.only(top: 25.0, right: 45.0, left: 45.0),
      height: 40,
      width: 336,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(26.0)),
        boxShadow: [BoxShadow(
          color: Colors.grey[100],
          offset: Offset(0.0, -2.0),
          blurRadius: 3,
        ),
      ]),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0), side: BorderSide.none),
        //color: Color.fromRGBO(255, 255, 255, 270),
        color: Colors.white,
        textColor: Color.fromRGBO(54,66,74, 0.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.person_add, size: 20.0,),
            SizedBox(width: 8.0,),
            Text('Agregar Cuadrilla', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400 )),
          ],
        ),
        onPressed: (){}
      ),
    );
  }

  Widget _crearAvatar(){
    return Container(
      width: 35.0,
      height: 35.0,
      padding: const EdgeInsets.all(2.0), // borde width
      decoration: new BoxDecoration(
        color: const Color(0xFFFFFFFF), // border color
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/Profile-Image@3x.png'),
        radius: 20.0,
      ),
    );
  }

  Widget _crearAvatarContador(){
    return Container(
      width: 35.0,
      height: 35.0,
      padding: const EdgeInsets.all(2.0), // borde width
      decoration: new BoxDecoration(
        color: const Color(0xFFFFFFFF), // border color
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        backgroundColor: Color.fromRGBO(240,235,234,1.0),
        child: Text('+5', style: TextStyle(color: Color.fromRGBO(54,66,74,0.9), ),),
        radius: 20.0,
      ),
    );
  }

  Widget _avatarsCuadrilla(){
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: _crearAvatar(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: _crearAvatar(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: _crearAvatar(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 65),
          child: _crearAvatar(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 85),
          child: _crearAvatar(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 105),
          child: _crearAvatarContador(),
        ),
      ],
    );
  }

  Widget _crearAcciones(BuildContext context){
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 5.0),
              _crearOptLimpieza(),
              SizedBox(height: 9.0),
              _crearAccion('FUCO'),
              SizedBox(height: 8.0),
              _crearAccion('FURE'),
              SizedBox(height: 8.0),
              _crearAccion('CPS 1-2-3'),
              SizedBox(height: 8.0),
              _crearAccion('Alfonso Villegas'),
              SizedBox(height: 12.0),
              _crearCuadrilla(),
              SizedBox(height: 12.0),
            ],
          ),
        ),
        BotonSiguiente(ruta: 'secondstep', contenido: 'Siguiente paso',),
      ],
    );
  }

  Widget _crearAccion(String texto){
    return Container(
      height: 53,
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0)),
        color: Colors.white,
        textColor: Color.fromRGBO(54,66,74, 0.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(width: 12.0, height: 52.0,),
            Text(texto, textAlign: TextAlign.left, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400 )),
            Expanded( child: Container() ),
            Icon(Icons.expand_more, color: Color.fromRGBO(54,66,74, 0.3), size: 30.0,),
          ],
        ),
        onPressed: (){}
      ),
    );
  }
  
}