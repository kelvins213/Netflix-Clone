import 'package:flutter/material.dart';
import 'package:netflix_clone/data/netflix_datas.dart';

class AvatarPage extends StatefulWidget{
  const AvatarPage({Key? key}) : super(key: key);
  @override
  _AvatarPage createState() => _AvatarPage();
}

class _AvatarPage extends State<AvatarPage>{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://www.ficaon.com/wp-content/uploads/2022/06/netflix.png',
              width: MediaQuery.of(context).size.width/4,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
                onPressed: onPressed,
                child: Icon(
                  Icons.add,
                  size: 50,
                ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Quem esta assistindo?', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
              ],
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemCount: NetflixDatabase.userAvatars.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black
                          ),
                          onPressed: onPressed,
                          child: Container(
                            child: AspectRatio(
                              aspectRatio: 4/5,
                              child: Image.network(NetflixDatabase.userAvatars[index].link),
                            ),
                          ),
                      ),
                  ),
                ],
              );
                },
          ),
         ],
        ),
      ),
    );
  }

  onPressed(){

  }
}