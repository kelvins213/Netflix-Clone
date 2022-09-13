import  'package:flutter/material.dart';

class UserPage extends StatefulWidget{
  final List lista;

  UserPage({
    Key? key,
    required this.lista,
  }) : super(key: key);
  @override
  _UserPage createState() => _UserPage();
}

class _UserPage extends State<UserPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.lista[0].name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              createIcon(icon: Icons.cast, color: Colors.white),
              createIcon(icon: Icons.search, color: Colors.white),
              createIcon(icon: Icons.person, color: Colors.white),
            ],
          ),
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
                        aspectRatio: 4/3,
                        child: createImage(link: 'https://image.api.playstation.com/vulcan/ap/rnd/202106/1704/JzL1NLQvok7Pghe9W5PP2XNV.png', height: 362),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        createImage(link: 'https://top10.netflix.com/images/top10.png', height: 50),
                        const SizedBox(width: 15),
                        createText(text: "Top 3 em animes hoje", size: 16, color: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        createColumnWithIcon(icon: Icons.add, color: Colors.white, text: 'Minha lista', size: 12),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: onPressed,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                createIcon(icon: Icons.play_arrow, color: Colors.black),
                                createText(text: "Assistir", size: 24, color: Colors.black),
                              ],
                            ),
                        ),
                        createColumnWithIcon(icon: Icons.info, color: Colors.white, text: 'Info', size: 12),
                      ],
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
  }){
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
  }){
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
  }){
    return Column(
      children: [
        createIcon(icon: icon, color: color),
        createText(text: text, size: size, color: color),
      ],
    );
  }

  createImage({
    required String link,
    required double height,
  }){
    return Image.network(link, height: height);
  }

  onPressed(){}

}