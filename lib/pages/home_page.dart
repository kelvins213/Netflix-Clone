import 'package:flutter/material.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
<<<<<<< HEAD
=======
import 'package:netflix_clone/domain/netflix_atributes.dart';
>>>>>>> 441e550493b6a17b40a986412608be407e02592a

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
<<<<<<< HEAD
      backgroundColor: Colors.black,
=======
>>>>>>> 441e550493b6a17b40a986412608be407e02592a
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
<<<<<<< HEAD
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                const Divider(),
                writeTitle(text: 'Populares na Netflix'),
                const Divider(),
                createScrollView(list: NetflixDatabase.tradicionalSeries),
                const Divider(),

                const Divider(),
                writeTitle(text: 'Em alta'),
                const Divider(),
                createScrollView(list: NetflixDatabase.onTopSeries),
                const Divider(),

                const Divider(),
                writeTitle(text: 'Assista de novo'),
                const Divider(),
                createScrollView(list: NetflixDatabase.watchAgainSeries),
                const Divider(),
              ],
            ),
          ],
        ),
=======
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              writeText(text: 'Populares na Netflix'),
              Scrollbar(
                thumbVisibility: true,
                trackVisibility: true,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return makeSerie();
                  },
                ),
              ),
            ],
          ),
        ],
>>>>>>> 441e550493b6a17b40a986412608be407e02592a
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
<<<<<<< HEAD
  }

  writeTitle({
    required String text,
  }){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
    );
  }

  createScrollView({
    required List list,
  }){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          createColumn(seriesList: list),
        ],
      ),
    );
  }

  createColumn({
    required List seriesList,
  }){
    return Row(
      children: [
        Image.network(seriesList[0], height: 160),
        const SizedBox(width: 16),
        Image.network(seriesList[1], height: 160),
        const SizedBox(width: 16),
        Image.network(seriesList[2], height: 160),
        const SizedBox(width: 16),
        Image.network(seriesList[3], height: 160),
        const SizedBox(width: 16),
        Image.network(seriesList[4], height: 160),
        const SizedBox(width: 16),
        Image.network(seriesList[5], height: 160),
        const SizedBox(width: 16),
      ],
    );
  }
  onPressed(){}
}

/*
createColumn({
    required List seriesList,
  }){
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: seriesList.length,
      itemBuilder: (context, index){
        return Column(
          children: [
            Row(
              children: [
                Image.network(seriesList[index]),
                const SizedBox(width: 10),
              ],
            ),
          ],
        );
      },
    );
  }
*/
=======
  }

  writeText({
    required String text,
  }){
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  makeSerie(){
    return Image.network(
        'https://static.stealthelook.com.br/wp-content/uploads/2021/11/o-ranking-das-series-mais-assistidas-da-netflix-e-porque-voce-deveria-assisti-las-sweet-tooth-20211108204454.jpg',
        height: 80,
    );
  }

  onPressed(){}

}
>>>>>>> 441e550493b6a17b40a986412608be407e02592a
