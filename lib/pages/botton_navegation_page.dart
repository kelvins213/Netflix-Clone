import 'package:flutter/material.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:flutter/cupertino.dart';

class BottonNavegationApp extends StatefulWidget{
  int selectedIndex = 0;
  @override
  _BottonNavegationApp createState() => _BottonNavegationApp();
}

class _BottonNavegationApp extends State<BottonNavegationApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: NetflixDatabase.pageList[widget.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1C1C1C),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: widget.selectedIndex,
        onTap: (index) {
          setState(() {
            widget.selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.game_controller_solid),
            label: 'Jogos',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.play_arrow_solid),
            label: 'Novidades',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.down_arrow),
            label: 'Download',
          ),
        ],
      ),
    );
  }
}