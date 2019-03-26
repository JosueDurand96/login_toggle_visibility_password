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



  GlobalKey<FormState> _key =  GlobalKey();
  bool _validate = false;
  String email, password;

  final emailcontrol01 = TextEditingController();
  final passcontrol01 = TextEditingController();

  @override
  void initState() {
    super.initState();
    //  initGoogle();
  }
  bool _obscureText = true;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Iniciar Sesión',
              style:  TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Segoe UI',
                color: Colors.grey,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 30.0),
            Form(
                key: _key,
                autovalidate: _validate,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextFormField(
                        controller: emailcontrol01,
                        maxLength: 32,

                        onSaved: (String value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle, color: Colors.amber),
                          labelText: 'Username',
                        ),
                      ),
                    ),
                    // controller: passcontrol01,

                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        controller: passcontrol01,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.security,
                            color: Colors.amber,
                          ),
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
                          "Comencemos",
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
