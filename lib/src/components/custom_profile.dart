import 'package:flutter/material.dart';

import 'package:art/src/blocs/provider.dart';
import 'package:art/src/components/custom_clippers.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248,250,251,1.0),
      body: _crearContainerSuperior(context),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _crearContainerSuperior(BuildContext context){

    final _screenSize = MediaQuery.of(context).size;
    
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: _screenSize.width * 0.7,
            color: Color.fromRGBO(26,153,167,1.0),
          ),
        ),
        _crearLogoFondo(),
        _crearInfoPersona(context),
        _crearAvatar()
      ],
    );
  }

  Widget _crearLogoFondo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image(
              height: 26,
              image: AssetImage('assets/images/grupo2@3x.png'),
            ),
            _crearIconoNotificaciones(),
          ],
        )
      ),
    );
  }

  Widget _crearIconoNotificaciones(){
    return Stack(
        children: <Widget>[
          Icon(Icons.notifications, color: Colors.white, size: 26.0,),
          Container(
            margin: EdgeInsets.only(left: 2.0, top: 7),
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Color.fromRGBO(244,170,0,1.0),
            ),
          ),
        ],
      );
  }

  Widget _crearAvatar(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 98, horizontal: 48.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Profile-Image@3x.png'),
              radius: 28.0,
            ),
          ],
        )
      ),
    );
  }

  Widget _crearInfoPersona(BuildContext context) {
    
    final bloc = Provider.of(context);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 108.0, left: 120.0,),
        child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Hola, ${ bloc.email }', style: TextStyle(color: Colors.white, fontSize: 16.5, fontWeight: FontWeight.w500, )),
              Text('Empresa: Altamar SpA', style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300, ),),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon( Icons.home, size: 30.0 ),
          title: Text('Inicio')
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.folder_open, size: 30.0 ),
          title: Text('Procedimientos')
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.list, size: 30.0 ),
          title: Text('Historial')
        ),
      ],
    );
  }
  
}