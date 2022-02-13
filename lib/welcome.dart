import 'package:flutter/material.dart';
import 'SignUp/signup.dart';
import 'SignIn/signin.dart';


class Welcome extends StatefulWidget {


  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Image.asset(
                'assets/images/illustration-1.png',
                width: 240,
              ),
              Text(
                "PortMe",
                style: TextStyle(
                  color: Color.fromRGBO(26, 97, 79, 1),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Начни будушее с нами",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Добро пожаловать",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 38,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color.fromRGBO(26, 97, 79, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Создать аккаунт',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );},
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Color.fromRGBO(26, 97, 79, 1)),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Вход',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                      child:
                      Image.asset('assets/images/google.png',
                        width: 50, height: 50, fit: BoxFit.contain,)),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                      child:
                      Image.asset('assets/images/facebook.png',
                        width: 50, height: 50, fit: BoxFit.contain,)),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                      child:
                      Image.asset('assets/images/linkedin.png',
                        width: 50, height: 50, fit: BoxFit.contain,)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}