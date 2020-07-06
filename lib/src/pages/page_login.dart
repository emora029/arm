import 'package:flutter/material.dart';

import 'package:art/src/blocs/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  bool acepto = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          _crearAcciones(),
        ],
      ), 
    );
  }

  Widget _crearAcciones(){
    return Container(
      child: Stack(
        children: <Widget>[
          _crearImagenFondo(),
          _crearLogoFondo(),
          _crearFormulario(context),
        ],
      ),
    );
  }

  Widget _crearImagenFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/fondoNaranja.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearLogoFondo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 95.0, vertical: 70.0),
        child: Image(
          image: AssetImage('assets/images/grupo2@3x.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearFormulario(BuildContext context){

    final _screenSize = MediaQuery.of(context).size;
    final bloc = Provider.of(context);

    return Positioned(
      bottom: -195.0,
      right: -110.0,
      left: -110.0,
      child: Container(
        width: _screenSize.width * 1.7,
        height: _screenSize.width * 1.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(300.0),
          color: Color.fromRGBO(242,242,242, 1.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 35.0,),
              _crearTitulo(),
              SizedBox(height: 25.0,),
              _crearEmail(bloc),
              SizedBox(height: 16.0,),
              _crearPassword(bloc),
              _recuperarPassword(),
              _crearBotonIngreso(bloc),
              _crearBotonPoliticas(),
              SizedBox(height: 200,)
            ],
          ),
      ),
    );
  }

  Widget _crearTitulo(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 205.0),
      child: Text(
        'Análisis de Riesgo de la tarea',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Montserrat', 
          color: Color.fromRGBO(54,66,74,1.0), 
          fontSize: 20.0, 
          fontWeight: FontWeight.w500,
        )
      ),
    );
  }

  Widget _crearEmail(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Theme(
          data: Theme.of(context).copyWith(splashColor: Colors.transparent),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150.0,),
              child: Container(
                height: 55,
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 4.0, top: 3.0),
                      child: Icon(Icons.account_circle, color: Color.fromRGBO(126,126,126, 0.3), size: 22.0,)
                    ),
                    hintText: "164845915",
                    hintStyle: TextStyle(fontSize: 14.0, color: Color.fromRGBO(126,126,126, 0.5),),
                    counterText: snapshot.data,
                    errorText: snapshot.error,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onChanged: bloc.changeEmail,
                ),
              ),
            ),
        );    
      },
    );
  }

  Widget _crearPassword(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Theme(
          data: Theme.of(context).copyWith(splashColor: Colors.transparent),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150.0),
              child: Container(
                height: 55,
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 4.0, bottom: 3.0),
                      child: Icon(Icons.lock, color: Color.fromRGBO(126,126,126, 0.3), size: 22.0,)
                    ),
                    hintText: "******",
                    hintStyle: TextStyle(fontSize: 14.0, color: Color.fromRGBO(126,126,126, 0.5),),
                    counterText: snapshot.data,
                    errorText: snapshot.error,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onChanged: bloc.changePassword,
                ),
              ),
            ),
        );
      },
    );
  }

  Widget _recuperarPassword(){
    return Padding(
      padding: const EdgeInsets.only(left: 140.0),
      child: FlatButton (
        child: Text('Olvidé mi contraseña', style: TextStyle(fontWeight: FontWeight.w400, color: Color.fromRGBO(26,153,167,1.0), fontSize: 12.5)),
        color: Colors.transparent,
        onPressed: () {},
      ),
    );
  }

  Widget _crearBotonIngreso(LoginBloc bloc){
    return StreamBuilder(
      stream: bloc.formValidStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          height: 45,
          width: 215,
          child: RaisedButton(
            shape: StadiumBorder(),
              color: Color.fromRGBO(26,153,167,1.0),
              textColor: Colors.white,
              child: Text('INGRESAR', style: TextStyle(fontSize: 14.0)),
              // child: Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 20.0),
              //   child: Text('INGRESAR', style: TextStyle(fontSize: 14.0)),
              // ),
              onPressed: snapshot.hasData ? () => _login(bloc, context) : null
          ),
        );
      },
    );
  }

  _login(LoginBloc bloc, BuildContext context){
    print('================');
    print('Email: ${ bloc.email }');
    print('Password: ${ bloc.password }');
    print('================');

    Navigator.pushReplacementNamed(context, 'dashboard');
  }

  Widget _crearBotonPoliticas(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150.0),
      child: Row(
        children: <Widget>[
            Checkbox(
                value: acepto,
                activeColor: Color.fromRGBO(244,170,0,1.0),
                checkColor: Colors.white,
                onChanged: (valor){
                  setState(() {
                    acepto = valor;
                  });
                },
              ),
            Text("Acepto los términos y condiciones", style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(54,66,74,1.0)),),
          ],
        ),
    );
  }

}