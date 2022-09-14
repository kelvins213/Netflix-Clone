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
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [

          ],
        ),
      ),
      body: ListView.builder(
        itemCount: NetflixDatabase.news.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      createText(text: "SET", size: 18, typeFont: FontWeight.w300),
                      createText(text: "15", size: 36, typeFont: FontWeight.bold),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                    
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  createText({
    required String text,
    required double size,
    required FontWeight typeFont,
    Color color = Colors.white,
  }){
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: typeFont,
      ),
    );
  }
  
  createImage({
    required String link,
    double height = 360,
  }){
    return AspectRatio(
      aspectRatio: 4/3,
      child: Image.network(link, height: height),
    );
  }
  

}