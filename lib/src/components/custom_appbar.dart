import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double heightbar;
  final String titulo;
  final String paso;
  final String contador;
  final String ruta;
  final color;

  const MyCustomAppBar({
    Key key,
    @required this.height,
    @required this.heightbar,
    @required this.titulo,
    @required this.paso,
    @required this.color,
    @required this.ruta,
    @required this.contador,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double maxWidth = MediaQuery.of(context).size.width * 0.70;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: color,
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(heightbar), 
         child: AppBar(
            elevation: 0.0,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: Icon(Icons.arrow_back_ios ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, ruta);
                    },
                  
                );
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: maxWidth),
                        child: Text(titulo,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17.5, 
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                  ),
                  SizedBox(width: 28.0,),
                  Text(contador, style: TextStyle(color: Color.fromRGBO(177,240,247,1.0), fontSize: 16.0),),
                  SizedBox(width: 5.0,)
                ],
              ),
            backgroundColor: Color.fromRGBO(26,153,167,1.0),
          ),
       ),
   
     body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 10.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(26,153,167,1.0),
                boxShadow: [
                BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.16),
                offset: new Offset(1.5, 3),
                blurRadius: 8,
                spreadRadius: 1
              )
            ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 128.0),
              height: 23.0,
              child: Center(child: Text(paso, style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w500),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color.fromRGBO(255,97,54,1.0),
              ), 
            ),
          ]
        ),
    );
  }
  
 @override
  Size get preferredSize => Size.fromHeight(height);
}