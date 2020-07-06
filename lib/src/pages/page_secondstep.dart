import 'package:flutter/material.dart';

import 'package:art/src/components/custom_appbar.dart';
import 'package:art/src/components/custom_botonsiguiente.dart';

class SecondStepPage extends StatefulWidget {
  @override
  _SecondStepPageState createState() => _SecondStepPageState();
}

class _SecondStepPageState extends State<SecondStepPage> {

  final estiloNumero   = TextStyle(color: Color.fromRGBO(54,66,74, 0.6), fontSize: 14.0, fontWeight: FontWeight.w900,);
  final estiloPregunta = TextStyle(color: Color.fromRGBO(54,66,74, 0.6), fontSize: 14.0, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242,242,242, 1.0),
      appBar: MyCustomAppBar(
        titulo: 'Análisis de Riesgo',
        paso: 'Paso 2',
        height: 83,
        heightbar: 45,
        color: Color.fromRGBO(242,242,242, 1.0),
        contador: '8/8',
        ruta: 'firststep',
      ),
      body: Stack(
        children: <Widget>[
          _crearPreguntas(),
        ],
      )
    );
  }

  Widget _crearPreguntas() {
    return ListView(
      children: <Widget>[
        _crearPregunta('1-  ','      ¿Me encuentro en condiciones físicas y psicológicas para realizar la tarea, dando cumplimiento al EST 6 (Fatiga y Somnolencia)'),
        _crearPregunta('2-',' ¿Cuenta con las autorizaciones de ingreso al área y coordinaciones necesarias para trabajos simultáneos?'),
        _crearPregunta('3-','¿Poseo todos los elementos de protección personal para realizar correctamente la tarea?'),
        _crearPregunta('4- ','      ¿Dispongo de equipos y herramientas correctas para la tarea y en  buen estado con su chequeo al día?'),
        _crearPregunta('5-','     ¿Existe algún documento que regule la tarea y conozca sus controles? (Procedimientos, instructivos, manual, otro)'),
        _crearPregunta6ConModal(),
        SizedBox(height: 20.0,),
        BotonSiguiente(ruta: 'secondstepB', contenido: 'Siguiente paso',),
      ],
    );
  }

  Widget _crearPregunta(String numero, String pregunta){
    return Column(
        children: <Widget>[
          SizedBox(height: 15.0,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Stack(
              children: <Widget>[
                Text(numero, textAlign: TextAlign.center, style: estiloNumero,),
                Text(pregunta, textAlign: TextAlign.center, style: estiloPregunta,)
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _crearBotonSi(),
              SizedBox(width: 35.0,),
              _crearBotonNo(),
            ],
          ),
          SizedBox(height: 15.0,),
          Divider(
          color: Colors.black,
          height: 27.0,
          indent: 70.0,
          endIndent: 70.0,
          ),
        ],

    );
  }

  Widget _crearBotonSi(){
    return Container(
      height: 33.0,
      width: 88.5,
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
      height: 33.0,
      width: 88.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: Colors.white
        ),
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

  Widget _crearPregunta6ConModal(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ListTile(
              leading: Text('6 -', textAlign: TextAlign.right, style: estiloNumero,),
              title: Align(
                child: Text('Especifique documento', style: estiloPregunta),
                alignment: Alignment(-1.5, 0),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0)),
              color: Colors.white,
              textColor: Color.fromRGBO(54,66,74, 0.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(width: 12.0, height: 52.0,),
                  Text('IFU 001, PFU012', textAlign: TextAlign.left, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400 )),
                  Expanded( child: Container() ),
                  Icon(Icons.expand_more, color: Color.fromRGBO(54,66,74, 0.3), size: 30.0,),
                ],
              ),
              onPressed: (){}
            ),
          ),
          SizedBox(height: 15.0,),
          Divider(
          color: Colors.black,
          height: 27.0,
          indent: 70.0,
          endIndent: 70.0,
          ),
        ],
      ),
    );
  }

}