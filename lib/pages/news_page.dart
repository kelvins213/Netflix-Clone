import 'package:flutter/material.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/pages/botton_navegation_page.dart';

class NewsPage extends StatefulWidget{
  const NewsPage({Key? key}) : super(key: key);
  @override
  _NewsPage createState() => _NewsPage();
}

class _NewsPage extends State<NewsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          const Text("oi"),
          BottonNavegationApp(),
        ],
      ),
    );
  }
}