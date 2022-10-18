import 'dart:async';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "netflix3.db"); //netflix.db vira o nome do banco de dados
    Database database = await openDatabase(
      path,
      version: 2,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async{
      String sql = 'create table Serie_link(serie INTERGER PRIMARY KEY, serieLink varchar(200));';
      await db.execute(sql);

      sql = 'create table Film_link(film INTERGER PRIMARY KEY, filmLink varchar(200));';
      await db.execute(sql);

      sql = 'create table News(new INTERGER PRIMARY KEY, newsLink varchar(200), imageLink varchar(200), title varchar(100), subtitle varchar(100), genre varchar(100), month varchar(20), day varchar(20));';
      await db.execute(sql);

      sql = 'create table tradicionalSerieLink(tradicional INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table onTopSerieLink(ontop INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table watchAgainSerieLink(again INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table avatarUser(avatar INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table pagesList(page INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      //this method will insert the values on the tables above
      insertDatas(db: db);
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if(oldVersion == 1 && newVersion == 2){
      //onCreate(db, newVersion);
    }
  }

  Future<FutureOr<void>> insertDatas({
    required Database db,
  }) async{
    List series = NetflixDatabase.series;
    List films = NetflixDatabase.films;
    List news = NetflixDatabase.news;
    List tradicional = NetflixDatabase.tradicionalSeries;
    List onTop = NetflixDatabase.onTopSeries;
    List again = NetflixDatabase.watchAgainSeries;
    List pages = NetflixDatabase.pageList;
    List avatars = NetflixDatabase.userAvatars;

    String sql;

    //dando erro nos comandos insert
    //dando problema na atualização do banco, provavelmente
    //problema nas aspas simples e duplas
    for (int i = 0; i < series.length; i++) {
      sql = "insert into Serie_link(serie, serieLink) values ('serie-$i', '${series[i].link}');";
      await db.execute(sql);
    }

    for (int i = 0; i < films.length; i++) {
      sql = "insert into Film_link(film, filmLink) values ('film-$i', '${films[i].link}');";
      await db.execute(sql);
    }

    for (int i = 0; i < news.length; i++) {
      sql = "insert into News(new, newsLink, imageLink, title, subtitle, genre, month, day) values ('new-$i','${news[i].link}','${news[i].image}', '${news[i].title}', '${news[i].subtitle}', '${news[i].genre}', '${news[i].month}', '${news[i].day}');";
      await db.execute(sql);
    }

    for (int i = 0; i < tradicional.length; i++){
      sql = "insert into tradicionalSerieLink(tradicional, link) values ('tradicional-$i','${tradicional[i]}');";
      await db.execute(sql);
    }

    for (int i = 0; i < onTop.length; i++) {
      sql = "insert into onTopSerieLink(ontop, link) values ('top-$i','${onTop[i]}');";
      await db.execute(sql);
    }

    for (int i = 0; i < again.length; i++) {
      sql = "insert into watchAgainSerieLink(again, link) values ('again-$i','${again[i]}');";
      await db.execute(sql);
    }

    for (int i = 0; i < pages.length; i++) {
      sql = "insert into pagesList(page, link) values ('page-$i','${pages[i]}');";
      await db.execute(sql);
    }

    for (int i = 0; i < avatars.length; i++) {
      sql = "insert into avatarUser(avatar, link) values ('avatar-$i','${avatars[i].link}');";
      await db.execute(sql);
    }
  }
}
