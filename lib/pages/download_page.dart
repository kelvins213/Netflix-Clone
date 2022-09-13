import 'package:flutter/material.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/pages/botton_navegation_page.dart';

class DownloadPage extends StatefulWidget{
  const DownloadPage({Key? key}) : super(key: key);
  @override
  _DownloadPage createState() => _DownloadPage();
}

class _DownloadPage extends State<DownloadPage>{
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