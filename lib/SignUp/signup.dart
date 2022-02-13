import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),


        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Создать аккаунт",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),),
                  SizedBox(height: 20,),
                  Text("Создайте аккаунт в пробной версии",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)


                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Логин"),
                  inputFile(label: "Email"),
                  inputFile(label: "Пароль", obscureText: true),
                  inputFile(label: "Повторить пароль", obscureText: true),
                ],
              ),
              Container(
                child: SizedBox(
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
                        'Зарегестрироваться',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),



              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Уже есть аккаунт?"),
                  Text(" Войдите",
                    style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    color: Colors.blue,
                  ),
                  )
                ],
              )



            ],

          ),


        ),

      ),

    );
  }
}



// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color:Colors.black87
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromRGBO(26, 97, 79, 1),
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color:Color.fromRGBO(26, 97, 79, 1),)
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}