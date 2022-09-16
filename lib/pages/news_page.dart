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
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/2,
              child: Row(
                children: [
                  createText(text: "Novidades", size: 24, typeFont: FontWeight.normal),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createIcon(icon: Icons.notification_add, size: 24),
                  createIcon(icon: Icons.person, size: 24),
                ],
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: NetflixDatabase.getNews(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: NetflixDatabase.news.length,
              itemBuilder: (context, index){
                List lista = NetflixDatabase.news;
                return Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              createText(text: lista[index].month, size: 18, typeFont: FontWeight.w300),
                              createText(text: lista[index].day, size: 36, typeFont: FontWeight.bold),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Card(
                            color: Colors.black,
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  createImage(link: lista[index].link, height: 360),
                                  createText(text: lista[index].title, size: 18, typeFont: FontWeight.bold),
                                  const SizedBox(height: 12),
                                  createText(text: lista[index].subtitle, size: 12, typeFont: FontWeight.normal),
                                  const SizedBox(height: 12),
                                  createText(text: lista[index].genre, size: 12, typeFont: FontWeight.normal),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                  ),
                );
              },
            );
          }
          else{
            return Center(
                child: const CircularProgressIndicator(),
            );
          }
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
    required double height,
  }){
    return AspectRatio(
      aspectRatio: 4/3,
      child: Image.network(link, height: height),
    );
  }

  createIcon({
    required IconData icon,
    required double size,
  }){
    return Icon(
      icon,
      size: size,
    );
  }
}
