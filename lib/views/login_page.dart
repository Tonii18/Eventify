import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(width: 200, height: 40),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bienvenido a',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(97, 92, 233, 1.0),
                  ),
                ),
                Text(
                  'Eventify',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(252, 149, 54, 1.0),
                  ),
                ),
              ],
            ),

            SizedBox(width: 200, height: MediaQuery.of(context).size.height * 0.05),

            Image.asset('lib/assets/images/login_icon.png'),

            SizedBox(width: 200, height: MediaQuery.of(context).size.height * 0.05),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.70,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nombre de usuario',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(180, 180, 180, 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(180, 180, 180, 1.0),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            SizedBox(width: 200, height: 20),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.70,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(180, 180, 180, 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(180, 180, 180, 1.0),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            SizedBox(width: 200, height: MediaQuery.of(context).size.height * 0.05),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.70,
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(97, 92, 233, 1.0),
                      Color.fromRGBO(55, 52, 131, 1.0),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    //TODO: Here the action when the button is pressed
                  },
                  child: Text(
                    'Iniciar sesion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(width: 200, height: MediaQuery.of(context).size.height * 0.02),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.70,
              child: Divider(
                height: 20,
                thickness: 1,
                color: Color.fromRGBO(63, 61, 86, 0.5),
              ),
            ),

            Text(
              '¿No tienes cuenta?',
              style: TextStyle(
                color: Color.fromRGBO(97, 92, 233, 1.0),
                fontSize: 20,
              ),
            ),

            TextButton(
              onPressed: () {},
              child: Text(
                'Regístrate',
                style: TextStyle(
                  color: Color.fromRGBO(252, 149, 54, 1.0),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
