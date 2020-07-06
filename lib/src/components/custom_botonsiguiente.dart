import 'package:flutter/material.dart';

class BotonSiguiente extends StatelessWidget {

  final String ruta;
  final String contenido;
  
  BotonSiguiente({ 
    @required this.ruta,
    @required this.contenido,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(242,242,242, 1.0)
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.only(topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0))),
        color: Color.fromRGBO(244,170,0,1.0),
        textColor: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.reply, color: Colors.white, size: 25.0, textDirection: TextDirection.rtl),            
              SizedBox(width: 5.0,),
              Text(contenido, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400 )),
            ],
          ),
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, ruta);
        }
      ),
    );
  }
}