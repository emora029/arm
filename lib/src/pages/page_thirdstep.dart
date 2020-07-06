import 'package:flutter/material.dart';

import 'package:art/src/components/custom_appbar.dart';
import 'package:art/src/components/custom_botonsiguiente.dart';

class ThirdStepPage extends StatefulWidget {
  @override
  _ThirdStepStatePage createState() => _ThirdStepStatePage();
}

class _ThirdStepStatePage extends State<ThirdStepPage> {

  bool _uno    = false;
  bool _dos    = false;
  bool _tres   = false;
  bool _cuatro = false;
  bool _cinco  = false;
  bool _seis   = false;
  bool _siete  = false;
  bool _ocho   = false;
  bool _nueve  = false;
  bool _diez   = false;
  bool _once   = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyCustomAppBar(
        titulo: 'Evaluación de la Tarea',
        paso: 'Paso 3',
        height: 83,
        heightbar: 45,
        color: Colors.white,
        contador: '',
        ruta: 'secondstepB',
      ),
      body: Stack(
        children: <Widget>[
          _crearAcciones(context),
        ],
      )
    );
  }

  Widget _crearAcciones(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            //SizedBox(height: 5.0,),
            _crearInstrucciones(),
            SizedBox(height: 5.0,),
            _crearAdvertencias(context),
            SizedBox(height: 15.0,),
            _crearPreguntas(context),
            SizedBox(height: 15.0,),
            BotonSiguiente(ruta: 'thirdstepB', contenido: 'Siguiente paso',),
          ],
        )
      ],
    );
  }

  Widget _crearInstrucciones(){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: Text('Marque las Reglas que Salvan la Vida que aplican.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Divider(
          color: Colors.black87,
          height: 10.0,
          indent: 80.0,
          endIndent: 80.0,
        ),
      ],
    );
  }

  Widget _crearAdvertencias(BuildContext context){

    final estilo = TextStyle(color: Color.fromRGBO(54,66,74,1.0), fontSize: 12.5);
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      width: _screenSize.width * 1,
      height: 70.0,
      color: Color.fromRGBO(244,244,244,1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(width: 20.0,),
          Icon(Icons.warning, color: Color.fromRGBO(244,170,0,1.0),),
          SizedBox(width: 10.0,),
          Expanded(child: Text('Si se identifica alguna de Reglas que Salvan la Vida debe continuar con el paso 4', style: estilo, textAlign: TextAlign.left,)),
          SizedBox(width: 12.0,),
        ],
      ),
    );
  }

  Widget _crearPreguntas(BuildContext context){
    return Stack(
      children: <Widget>[
        _crearFondoPregunta(context),
      ],
    );
  }

  Widget _crearFondoPregunta(BuildContext context){
    
    final _screenSize = MediaQuery.of(context).size;
    
    final _fondo = Container(
      margin: EdgeInsets.only(left: 29.0),
      width: _screenSize.width * 0.9,
      height: 80.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(16,100,112,1.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );

    final _avatar = Container(
      margin: EdgeInsets.only(top: 10.0, left: 9.0 ),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/Imagen1@3x.png'),
        radius: 30.0,
      ),
    );

    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('1', 'Intervención de equipo energizado (Energía Eléctrica)', _uno),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('2', 'Caídas de distinto nivel por trabajos en altura', _dos),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('3', 'Conducción (choque/colisión/atropellos/volcamiento) carretera', _tres),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('4', 'Liberación descontrolada de  energía (Eléctrica, neumática, hidráulica, térmica, mecánica, potencial, química)', _cuatro),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('5', 'Exposición a atmósfera peligrosa/ Falta de oxígeno', _cinco),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('6', 'Contacto o radiación con material fundido (temperaturas extremas)', _seis),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('7', 'Aplastamiento por movimiento de carga suspendida', _siete),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('8', 'Atrapamiento por intervenir equipos/ piezas móviles', _ocho),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('9', 'Contacto con ácido sulfúrico concentrado', _nueve),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('10', ' Incendio (Áreas Críticas/Pta ácido/Pta Oxígeno)', _diez),
          ],
        ),
        SizedBox(height: 13.0,),
        Stack(
          children: <Widget>[
            _fondo,
            _avatar,
            _crearPregunta('11', 'Otro (describir) Si aplica un control crítico de la corporación, aplique los controles especificados', _once),
          ],
        ),
        SizedBox(height: 13.0,),
      ],
    );
  }

  Widget _crearPregunta(String numero, String pregunta, bool boolCheck){

    final estiloNro = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white);
    final estiloPregunta = TextStyle(fontSize: 13.5, color: Colors.white);

    return Container(
      margin: EdgeInsets.only(top: 14.8,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          SizedBox(width: 75.0,),

          Text(numero, style: estiloNro,),
          
          SizedBox(width: 11.0,),

          Expanded(child: Text(pregunta, style: estiloPregunta, maxLines: 2,)),
          
          SizedBox(width: 14.0,),

          Transform.scale(
            scale: 1.3,
            child: checkbox(numero, boolCheck),
          ),

          SizedBox(width: 28.0,),
        ],
      ),
    );
  }

  Widget checkbox(String title, bool boolValue) {
    if (boolValue == false) {
      return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Opacity(opacity: 0.0, child: Text(title, style: TextStyle(fontSize: 0, color: Colors.white))),

          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child:  Checkbox(
            activeColor: Color.fromRGBO(244,170,0,1.0),
            checkColor: Colors.white,
            value: boolValue,
            onChanged: (bool value) {
              setState(() {
                switch (title) {
                  case "1":
                    _uno = value;
                    break;
                  case "2":
                    _dos = value;
                    break;
                  case "3":
                    _tres = value;
                    break;
                  case "4":
                    _cuatro = value;
                    break;
                  case "5":
                    _cinco = value;
                    break;
                  case "6":
                    _seis = value;
                    break;
                  case "7":
                    _siete = value;
                    break;
                  case "8":
                    _ocho = value;
                    break;
                  case "9":
                    _nueve = value;
                    break;
                  case "10":
                    _diez = value;
                    break;
                  case "11":
                    _once = value;
                    break;
                }
              });
            },
          ),
          ),  
        ],
      ),
    );
    } else {
      return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Opacity(opacity: 0.0, child: Text(title, style: TextStyle(fontSize: 0, color: Colors.white))),

          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Color.fromRGBO(244,170,0,1.0),
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child:  Checkbox(
            activeColor: Color.fromRGBO(244,170,0,1.0),
            checkColor: Colors.white,
            value: boolValue,
            onChanged: (bool value) {
              setState(() {
                switch (title) {
                  case "1":
                    _uno = value;
                    break;
                  case "2":
                    _dos = value;
                    break;
                  case "3":
                    _tres = value;
                    break;
                  case "4":
                    _cuatro = value;
                    break;
                  case "5":
                    _cinco = value;
                    break;
                  case "6":
                    _seis = value;
                    break;
                  case "7":
                    _siete = value;
                    break;
                  case "8":
                    _ocho = value;
                    break;
                  case "9":
                    _nueve = value;
                    break;
                  case "10":
                    _diez = value;
                    break;
                  case "11":
                    _once = value;
                    break;
                }
              });
            },
          ),
          ),  
        ],
      ),
    );
    }

    
  }
  
}