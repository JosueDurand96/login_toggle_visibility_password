import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() =>  _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  @override
  void initState() {
    super.initState();
    //  initGoogle();
  }
  bool _obscureText = true;
  // Metodo para visualizar contraseña
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Iniciar Sesión',
              style:  TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Segoe UI',
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 30.0),
            Form(

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextFormField(

                        maxLength: 32,


                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle, color: Colors.blue),
                          labelText: 'Username',
                        ),
                      ),
                    ),
                    // controller: passcontrol01,

                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(

                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle, color: Colors.blue),
                          suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey, size: 25.0),
                          labelText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        onTap: _toggle,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Text(
                            "¿Olvidaste tu contraseña?",
                            style:  TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    ButtonTheme(
                      minWidth: 350.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        textColor: Colors.white,
                        color: Colors.amber,
                        child:  Text(
                          "INICIAR SESIÓN",
                          style:  TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),



                  ],
                )),
          ],
        ),
      ),
    );
  }





}
