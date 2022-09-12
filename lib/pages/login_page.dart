import  'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:netflix_clone/domain/netflix_atributes.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  NetflixLogin objeto = NetflixDatabase.login;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(objeto.logo),
              buildTextFormField(text: "Your Email"),
              buildTextFormField(text: "Your Password"),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFD2001A)),
                ),
                onPressed: onPressed,
                child: const Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildTextFormField({
    required String text,
  }){
    return TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          labelText: text,
        ),
      );
  }

  onPressed(){}

}