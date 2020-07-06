import 'package:flutter/material.dart';

class SentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(47,47,47,0.7),
      body: Center(
        child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        height: 350.0,
        width: 350.5,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0), side: BorderSide.none),
          color: Color.fromRGBO(255,97,54,1.0),
          textColor: Color.fromRGBO(54,66,74, 0.6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.check, color: Colors.white, size: 120.0,),
              Text('SOLICITUD ENVIADA', style: TextStyle(fontSize: 22.0, color: Colors.white, )),
              Text('CON ÉXITO', style: TextStyle(fontSize: 44.0, color: Colors.white, fontWeight: FontWeight.w900 )),
              Divider(color: Colors.white,height: 20.0,indent: 53.0,endIndent: 53.0,),
              SizedBox(height: 28.0,),
            ],
          ),
          onPressed: () {
              Navigator.pushReplacementNamed(context, 'waitingapproval');
            }
          ),
        ),
      ),
    );
     
  }
}