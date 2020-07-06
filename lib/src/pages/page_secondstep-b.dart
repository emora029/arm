import 'package:flutter/material.dart';

import 'package:art/src/components/custom_appbar.dart';
import 'package:art/src/components/custom_botonsiguiente.dart';

class SecondStepBPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyCustomAppBar(
        titulo: 'Análisis de Riesgo',
        paso: 'Paso 2',
        height: 83,
        heightbar: 45,
        color: Colors.white,
        contador: '',
        ruta: 'secondstep',
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
        Column(
          children: <Widget>[
            SizedBox(height: 5.0,),
            _crearPregunta('A) Secuencia de la actividad paso a paso'),
            SizedBox(height: 10.0,),
            _crearOpciones('Adición de C/F y metal blanco'),
            SizedBox(height: 10.0,),
            _crearOpciones('Sacar quemador culata'),
            SizedBox(height: 10.0,),
            _crearBotonAgregarPaso(),
            SizedBox(height: 10.0,),
            _crearPregunta('B) Identifique los riesgos'),
            SizedBox(height: 10.0,),
            _crearOpciones('Caída a igual o distinto nivel'),
            SizedBox(height: 10.0,),
            _crearOpciones('Quemaduras Atrapamiento'),
            SizedBox(height: 10.0,),
            _crearBotonAgregarPaso(),
            SizedBox(height: 10.0,),
            _crearPregunta('c) Indique las medidas de control(es)'),
            SizedBox(height: 10.0,),
            _crearOpciones('Orden y Aseo más autocuidado'),
            SizedBox(height: 10.0,),
            _crearOpciones('No exponerse a línea de fuego'),
            SizedBox(height: 10.0,),
            _crearBotonAgregarPaso(),
            SizedBox(height: 20.0,),
            BotonSiguiente(ruta: 'thirdstep', contenido: 'Siguiente paso',),
          ],
        )
      ],
    );
  }

  Widget _crearPregunta(String pregunta){

    final estilo = TextStyle(color: Color.fromRGBO(54,66,74,1.0), fontSize: 16.0);

    return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: double.infinity,
      height: 70.0,
      color: Color.fromRGBO(234,234,234,1.0),
      child: Padding(
        padding: const EdgeInsets.only(right: 130.0, left: 40.0),
        child: Center(child: Text(pregunta, style: estilo, textAlign: TextAlign.left,)),
      ),
    );
  }

  Widget _crearOpciones(String opcion){

    final estilo = TextStyle(color: Color.fromRGBO(54,66,74,0.6), fontSize: 14.5);

    return Container(
      width: 355.0,
      margin: EdgeInsets.symmetric(horizontal: 25.0,vertical:5.0 ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.06),offset: new Offset(1.5, 3),blurRadius: 1,spreadRadius: 4)],
      ),
      child: FlatButton(
        child: Text(opcion,style: estilo),
        color: Colors.white,
        onPressed: (){},
      ),
    ); 
  }

  Widget _crearBotonAgregarPaso(){
    return Container(
      height: 38.0,
      width: 118.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0), side: BorderSide.none),
        color: Color.fromRGBO(255,97,54,1.0),
        textColor: Color.fromRGBO(54,66,74, 0.6),
        child: Text('Agregar paso', style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.w400 )),
        onPressed: (){}
      ),
    );
  }
}