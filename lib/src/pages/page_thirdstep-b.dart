import 'package:flutter/material.dart';

import 'package:art/src/components/custom_appbar.dart';
import 'package:art/src/components/custom_botonsiguiente.dart';

class ThirdStepBPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242,242,242, 1.0),
      appBar: MyCustomAppBar(
        titulo: 'Aplicación de Instrucciones de seguridad',
        paso: 'Paso 3',
        height: 90,
        heightbar: 45,
        color: Color.fromRGBO(242,242,242, 1.0),
        contador: '',
        ruta: 'thirdstep',
      ),
      body: Stack(
        children: <Widget>[
          _revisarPreguntas(context)
        ],
      )
    );
  }

  Widget _revisarPreguntas(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            _crearAdvertencia(),
            SizedBox(height: 20.0,),
            _crearTitulo(),
            SizedBox(height: 15.0,),
            _crearTablero(context, '6'),
            SizedBox(height: 15.0,),
            _crearTablero(context, '8'),
            SizedBox(height: 15.0,),
            _crearTablero(context, '10'),
            SizedBox(height: 20.0,),
            BotonSiguiente(ruta: 'sent', contenido: 'Enviar al Supervisor',),
          ],
        )
      ],
    );
  }

  Widget _crearAdvertencia(){

    final icon = Container(
      width: 48.0,
      height: 48.0,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(Icons.warning, color: Color.fromRGBO(244,170,0,1.0), size: 28.0,),
        radius: 20.0,
      ),
    );

    final fondo = Container(
      height: 90.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(234,57,57,1.0)
      ),
    );

    final texto = Text(
      'Estos controles son “NO NEGOCIABLES”, es decir, un NO implica tomar medidas correctivas inmediatas, antes de comenzar la tarea.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12.8,
        fontWeight: FontWeight.w300
        ),
      );

    return Container(
      height: 110.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 22.0,
            right: 0.0,
            left: 0.0,
            child: fondo
          ),
          Positioned(
            right: 50.0,
            left: 50.0,
            child: icon
          ),
          Positioned(
            top: 53.0,
            right: 2.5,
            left: 4.0,
            child: texto
          ),
        ],
      ),
    );
  }

  Widget _crearTitulo(){
    return Container(
      height: 54.2,
      width: 500,
      decoration: BoxDecoration(
        color: Color.fromRGBO(16,100,112,1.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 18.0),
        child: Text('Trabajador',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.5),
        ),
      ),
    );
  }

  Widget _crearTablero(BuildContext context, String nro){ 

    final _screenSize = MediaQuery.of(context).size;

    final text = Text('N° RC: ', style: TextStyle(fontSize: 17.0),);
    final nroFinal = Text(nro, style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15.0),);

    final tituloNroRC = Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 46.0),
      child: Row(
        children: <Widget>[
          text,
          nroFinal
        ],
      ),
    );

    return Container(
      height: _screenSize.height * 0.6,
      width: _screenSize.width * 1,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: <Widget>[
          tituloNroRC,
          Padding(
            padding: const EdgeInsets.only(right: 35.0, left: 25.0),
            child: _crearTabla(),
          )
        ],
      )
    );
  }

  Widget _crearTabla(){
    return Table(
      children: [
        TableRow(
          children: [
            _crearNumeracion('1'),
            _crearBotonSi(),
            _crearBotonNo(),
          ]
        ),
        TableRow(
          children: [
            _crearNumeracion('2'),
            _crearBotonSi(),
            _crearBotonNo(),
          ]
        ),
        TableRow(
          children: [
            _crearNumeracion('4'),
            _crearBotonSi(),
            _crearBotonNo(),
          ]
        ),
        TableRow(
          children: [
            _crearNumeracionBloqueada(),
            _crearBotonVacio(),
            _crearBotonVacio(),
          ]
        ),
        TableRow(
          children: [
            _crearNumeracionBloqueada(),
            _crearBotonVacio(),
            _crearBotonVacio(),
          ]
        ),
        TableRow(
          children: [
            _crearNumeracionBloqueada(),
            _crearBotonVacio(),
            _crearBotonVacio(),
          ]
        )
      ],
    );
  }

  Widget _crearBotonSi(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 25.0,
      width: 30.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0), side: BorderSide.none),
        color: Color.fromRGBO(255,97,54,1.0),
        textColor: Color.fromRGBO(54,66,74, 0.6),
        child: Text('Si', style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.w400 )),
        onPressed: (){}
      ),
    );
  }

  Widget _crearBotonNo(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 25.0,
      width: 30.0,
      child: OutlineButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0),),
        borderSide: BorderSide(color: Color.fromRGBO(255,97,54,1.0), width: 1.5),
        color: Colors.white,
        textColor: Color.fromRGBO(54,66,74, 0.6),
        child: Text('No', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold )),
        onPressed: (){}
      ),
    );
  }

  Widget _crearNumeracion(String numeracion){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 25.0,
      width: 30.0,
      child: Center(child: Text(numeracion, style: TextStyle(
        fontSize: 14.0,
        color: Color.fromRGBO(47,47,47,0.7)
      ),)),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
            BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            offset: new Offset(1, 3.5),
            blurRadius: 1.5,
            spreadRadius: 1.5
          )
        ],
      ),
    ); 
  }

  Widget _crearNumeracionBloqueada(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 25.0,
      width: 30.0,
      child: Center(child: Text('N°', style: TextStyle(
        fontSize: 14.0,
        color: Color.fromRGBO(47,47,47,0.18)
      ),)),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
            BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            offset: new Offset(1, 3.5),
            blurRadius: 1.5,
            spreadRadius: 1.5
          )
        ],
      ),
    ); 
  }

  Widget _crearBotonVacio(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 25.0,
      width: 30.0,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(191,191,191,0.5)),
          borderRadius: BorderRadius.circular(24.0),
          color: Color.fromRGBO(226,226,226,1.0),
        ),
    );
  }
}