import 'dart:async';
import 'package:netflix_clone/data/netflix_datas.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "netflix2.db"); //netflix.db vira o nome do banco de dados
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async{
      String sql = 'create table Serie_link(nameList INTERGER PRIMARY KEY, serieLink varchar(200));';
      await db.execute(sql);

      sql = 'create table Film_link(nameList INTERGER PRIMARY KEY, filmsLink varchar(200));';
      await db.execute(sql);

      sql = 'create table News(nameList INTERGER PRIMARY KEY, newsLink varchar(200), imageLink varchar(200), title varchar(100), subtitle varchar(100), genre varchar(100), month varchar(20), day varchar(20));';
      await db.execute(sql);

      sql = 'create table tradicionalSerieLink(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table onTopSerieLink(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table watchAgainSerieLink(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table avatarUser(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table pagesList(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      //this method will insert the values on the tables above
      insertDatas(db: db);
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {
      insertDatas(db: db);
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

    for (int i = 0; i < series.length; i++) {
      sql = 'insert into Serie_link(nameList, serieLink) values (series, \'${series[i].link}\');';
      print(sql);
      await db.execute(sql);
    }

    for (int i = 0; i < films.length; i++) {
      sql = 'insert into Film_link(nameList, filmLink) values (films, \'${films[i].link}\');';
      await db.execute(sql);
    }

    for (int i = 0; i < news.length; i++) {
      sql = 'insert into News(nameList, newsLink, imageLink, title, subtitle, genre, month, day) values (news, \'${news[i].link}\',\'${news[i].image}\', \'${news[i].title}\', \'${news[i].subtitle}\', \'${news[i].genre}\', \'${news[i].month}\', \'${news[i].day}\');';
      await db.execute(sql);
    }

    for (int i = 0; i < tradicional.length; i++){
      sql = 'insert into tradicionalSerieLink(nameList, link) values (tradicionalSeriesLink, \'${tradicional[i].link}\');';
      await db.execute(sql);
    }

    for (int i = 0; i < onTop.length; i++) {
      sql = 'insert into onTopSerieLink(nameList, link) values (onTopSeries, \'${onTop[i].link}\');';
      await db.execute(sql);
    }

    for (int i = 0; i < again.length; i++) {
      sql = 'insert into watchAgainSerieLink(nameList, link) values (watchAgainSeries, \'${again[i].link}\');';
      await db.execute(sql);
    }

    for (int i = 0; i < pages.length; i++) {
      sql = 'insert into pagesList(nameList, link) values (pageList, \'${pages[i].link}\');';
      await db.execute(sql);
    }

    for (int i = 0; i < avatars.length; i++) {
      sql = 'insert into avatarUser(nameList, link) values (userAvatars, \'${avatars[i].link}\');';
      await db.execute(sql);
    }
  }
}
