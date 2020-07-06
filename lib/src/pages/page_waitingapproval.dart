import 'package:flutter/material.dart';

import 'package:art/src/components/custom_profile.dart';

class WaitingApprovalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248,250,251,1.0),
      body: Stack(
        children: <Widget>[
          ProfilePage(),
          _crearRectanguloTareas(context)
        ],
      ),
    );
  }

  Widget _crearRectangulo(BuildContext context){

    final _screenSize = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 230.0),
          Container(
              width: _screenSize.width * 0.7,
              height: _screenSize.width * 0.7,
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
          ),
        ],
      ),
    );
  }

  Widget _crearRectanguloTareas(BuildContext context){
    return SafeArea(
      child: Stack(
        children: <Widget>[
          _crearRectangulo(context),
          Column(
            children: <Widget>[
              SizedBox(height: 395.0),
              Center(
                child: Image(
                  height: 150.0,
                  image: AssetImage('assets/images/Mountains@2x.png'),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 203.0, width: 95.0,),
              _iconoEspera(),
              SizedBox(height: 18.0,),
              Row(
                children: <Widget>[
                  SizedBox(width: 90.0,),
                  Text('Esperando', style: TextStyle(fontSize: 23.0, color: Color.fromRGBO(77,73,91,1.0),),),
                  Text(' Aprobación', style: TextStyle(fontSize: 23.0, color: Color.fromRGBO(241,156,14,1.0),),)
                ],
              ),
              SizedBox(height: 10.0,),
              Text('Tarea:', style: TextStyle(fontSize: 19.0, color: Color.fromRGBO(77,73,91,1.0),),),
              Text('Limpieza', style: TextStyle(fontSize: 26.0, color: Color.fromRGBO(255,97,54,1.0), fontWeight: FontWeight.w800),),
              Divider(color: Colors.black,height: 18.0,indent: 120.0,endIndent: 120.0,),
              Text('Supervisor', style: TextStyle(fontSize: 19.0, color: Color.fromRGBO(77,73,91,1.0),),),
              Text('Alfonso Villegas', style: TextStyle(fontSize: 16.8, color: Color.fromRGBO(77,73,91,0.6),)),
              Divider(color: Colors.black,height: 20.0,indent: 120.0,endIndent: 120.0,),
              Text('Cuadrilla', style: TextStyle(fontSize: 16.8, color: Color.fromRGBO(77,73,91,1.0),),),
              SizedBox(height: 8.0,),
              _avatarsCuadrilla()
            ],
          )
        ],
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

  Widget _iconoEspera(){
    return Container(
      width: 62.0,
      height: 62.0,
      padding: const EdgeInsets.all(2.0), // borde width
      decoration: new BoxDecoration( // border color
        shape: BoxShape.circle,
        boxShadow: [
            BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            offset: new Offset(1, 1.0),
            blurRadius: 1.0,
            spreadRadius: 1.0
          )
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(Icons.history, color: Color.fromRGBO(244,170,0,1.0), textDirection: TextDirection.rtl, size: 42.0,),
        radius: 20.0,
      ),
    );
  }

}