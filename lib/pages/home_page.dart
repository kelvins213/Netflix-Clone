import 'package:flutter/material.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:netflix_clone/domain/netflix_atributes.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage>{

  String logo = NetflixDatabase.login.logo;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                logo,
                height: 40,
              ),
              creatElevatedButton(text: 'Séries'),
              creatElevatedButton(text: 'Filmes'),
              creatElevatedButton(text: 'Minha lista'),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              children: [
                createScrollView(text: 'Populares na Netflix'),
                createScrollView(text: 'Em alta'),
                createScrollView(text: 'Assista de novo'),
              ],
            ),
          ],
        ),
      ),
    );
  }
  creatElevatedButton({
    required String text,
  }){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  createScrollView({
   required String text,
  }){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          createRow(text: text),
        ],
      ),
    );
  }

  createRow({
    required String text,
  }){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network('https://static.stealthelook.com.br/wp-content/uploads/2021/11/o-ranking-das-series-mais-assistidas-da-netflix-e-porque-voce-deveria-assisti-las-sweet-tooth-20211108204454.jpg', height: 160),
            Image.network('https://static.stealthelook.com.br/wp-content/uploads/2021/11/o-ranking-das-series-mais-assistidas-da-netflix-e-porque-voce-deveria-assisti-las-sweet-tooth-20211108204454.jpg', height: 160),
            Image.network('https://static.stealthelook.com.br/wp-content/uploads/2021/11/o-ranking-das-series-mais-assistidas-da-netflix-e-porque-voce-deveria-assisti-las-sweet-tooth-20211108204454.jpg', height: 160),
            Image.network('https://static.stealthelook.com.br/wp-content/uploads/2021/11/o-ranking-das-series-mais-assistidas-da-netflix-e-porque-voce-deveria-assisti-las-sweet-tooth-20211108204454.jpg', height: 160),
            Image.network('https://static.stealthelook.com.br/wp-content/uploads/2021/11/o-ranking-das-series-mais-assistidas-da-netflix-e-porque-voce-deveria-assisti-las-sweet-tooth-20211108204454.jpg', height: 160),
          ],
        ),
      ],
    );
  }
  onPressed(){}
}