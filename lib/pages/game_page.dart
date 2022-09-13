import 'package:flutter/material.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/pages/botton_navegation_page.dart';

class GamePage extends StatefulWidget{
  const GamePage({Key? key}) : super(key: key);
  @override
  _GamePage createState() => _GamePage();
}

class _GamePage extends State<GamePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          const Text("oi"),
        ],
      ),
    );
  }
}