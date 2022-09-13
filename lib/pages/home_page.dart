import 'package:flutter/material.dart';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:netflix_clone/widgets/user_widget.dart';

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
              creatElevatedButton(text: 'Séries', lista: NetflixDatabase.series),
              creatElevatedButton(text: 'Filmes', lista: NetflixDatabase.series),
              creatElevatedButton(text: 'Minha lista', lista: NetflixDatabase.series),
            ],
          ),
        ),
      ),
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
      ),
    );
  }
  creatElevatedButton({
    required String text,
    required List lista,
  }){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: () => onPressed(lista),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
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

  onPressed(List lista){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
           return UserPage(lista: lista);
          }
      ),
    );
  }
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