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
  List <String> sectionsTitles = [
    'Populares na Netflix',
    'Em alta',
    'Assista de novo',
  ];
  List <List> list = [
    NetflixDatabase.tradicionalSeries,
    NetflixDatabase.onTopSeries,
    NetflixDatabase.watchAgainSeries,
  ];

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
              creatElevatedButton(text: 'Séries', lista: NetflixDatabase.series, textTitle: 'Top 3 series hoje', image: 'https://image.api.playstation.com/vulcan/ap/rnd/202106/1704/JzL1NLQvok7Pghe9W5PP2XNV.png'),
              creatElevatedButton(text: 'Filmes', lista: NetflixDatabase.films, textTitle: 'Top 3 filmes hoje', image: 'https://4.bp.blogspot.com/-I93v6lg---4/WDwYs7fAebI/AAAAAAAAE7E/R50nlPPlKPAZjWGQeChjBPe2Iln_FErygCLcB/s1600/Synchronicity-Netflix.jpg'),
              creatElevatedButton(text: 'Minha lista', lista: NetflixDatabase.series, textTitle: 'Top 3 da sua lista', image: 'https://image.api.playstation.com/vulcan/ap/rnd/202106/1704/JzL1NLQvok7Pghe9W5PP2XNV.png'),
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
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: sectionsTitles.length,
                    itemBuilder: (context, index){
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                sectionsTitles[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              height: 200,
                              child: Row(
                                children: [
                                  createColumn(seriesList: list[index]),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 4,
                      );
                    },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  creatElevatedButton({
    required String textTitle,
    required String text,
    required List lista,
    required String image,
  }){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: () => onPressed(lista, textTitle, image),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  createColumn({
    required List seriesList,
  }){
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: seriesList.length,
        separatorBuilder: (context, index){return const SizedBox(width: 16);},
        itemBuilder: (context, index) {
            return Row(
              children: [
                Image.network(seriesList[index], height: 160),
              ],
            );
          },
    );
  }

  onPressed(List lista, String textTitle, String image){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
           return UserPage(lista: lista, textTitle: textTitle, link: image);
          }
      ),
    );
  }
}