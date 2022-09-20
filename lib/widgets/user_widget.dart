import  'package:flutter/material.dart';
import 'package:netflix_clone/domain/netflix_atributes.dart';

class UserPage extends StatefulWidget{
  final List lista;

  UserPage({
    Key? key,
    required this.lista,
  }) : super(key: key);
  @override
  _UserPage createState() => _UserPage();
}

class _UserPage extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  createText(text: widget.lista[0].name,
                      size: 24,
                      color: Colors.white),
                ],
              ),
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  createIcon(icon: Icons.cast, color: Colors.white),
                  createIcon(icon: Icons.search, color: Colors.white),
                  createIcon(icon: Icons.person, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: createImage(
                        link: 'https://upload.wikimedia.org/wikipedia/pt/4/4b/Jujutsu_Kaisen_Cover.png',
                        height: 362),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      createImage(
                          link: 'https://top10.netflix.com/images/top10.png',
                          height: 50),
                      const SizedBox(width: 15),
                      createText(text: "Top 3 em animes hoje",
                          size: 16,
                          color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      createColumnWithIcon(icon: Icons.add,
                          color: Colors.white,
                          text: 'Minha lista',
                          size: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: onPressed,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            createIcon(icon: Icons.play_arrow,
                                color: Colors.black),
                            createText(text: "Assistir",
                                size: 24,
                                color: Colors.black),
                          ],
                        ),
                      ),
                      createColumnWithIcon(icon: Icons.info,
                          color: Colors.white,
                          text: 'Info',
                          size: 12),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Expanded(
                      child: Row(
                        children: [
                          createText(text: "Continuar assistindo",
                              size: 24,
                              color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: 200,
                        child: createScroll(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  createText({
    required String text,
    required double size,
    required Color color,
  }) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold
      ),
    );
  }

  createIcon({
    required IconData icon,
    required Color color,
  }) {
    return Icon(
      icon,
      size: 30,
      color: color,
    );
  }

  createColumnWithIcon({
    required IconData icon,
    required Color color,
    required String text,
    required double size,
  }) {
    return Column(
      children: [
        createIcon(icon: icon, color: color),
        createText(text: text, size: size, color: color),
      ],
    );
  }

  createSerieWithIcons({
    required IconData firstIcon,
    required IconData secondIcon,
    required Color color,
    required double size,
    required NetflixSeries serie,
  }) {
    return Column(
      children: [
        Image.network(serie.serie, height: 160),
        Container(
          width: 114,
          color: Color(0xFF1C1C1C).withOpacity(0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createIcon(icon: Icons.info, color: Colors.white),
              createIcon(icon: Icons.more_vert, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }

  createImage({
    required String link,
    required double height,
  }) {
    return Image.network(link, height: height);
  }

  createScroll () {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(

          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          separatorBuilder: (context, index) {return SizedBox(width: 16);},
          itemCount: widget.lista.length,
          itemBuilder: (context, index){
            return Row(
              children: [
                createSerieWithIcons(firstIcon: Icons.info, secondIcon: Icons.more_vert, color: Colors.white, size: 160, serie: widget.lista[index]),
              ],
            );
          }
      ),
    );
  }

  onPressed() {}
}
