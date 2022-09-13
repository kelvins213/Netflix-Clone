import 'dart:convert';

import  'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:netflix_clone/domain/netflix_atributes.dart';
import 'package:netflix_clone/pages/botton_navegation_page.dart';
import 'package:netflix_clone/pages/home_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  NetflixLogin objeto = NetflixDatabase.login;

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(objeto.logo),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 48),
                          TextFormField(
                            controller: userController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo de e-mail obrigatório';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFE4DCCF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              labelText: "Your e-mail",
                              floatingLabelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          const SizedBox(height: 48),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo de senha obrigatório';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFE4DCCF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              labelText: "Your password",
                              floatingLabelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD2001A)
                      ),
                      onPressed: onPressed,
                      child: const Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
  void onPressed() {
    if (_formKey.currentState!.validate()) {

      String userLogin = "joao@gmail.com";
      String passwordLogin = "123456";

      String user = userController.text;
      String pwd = passwordController.text;

      if (userLogin == user && passwordLogin == pwd) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return BottonNavegationApp();
            },
          ),
        );
      } else {
        print("Usuario/Senha incorretos");
      }
    } else {
      print("Formulário invalido");
    }
  }

}