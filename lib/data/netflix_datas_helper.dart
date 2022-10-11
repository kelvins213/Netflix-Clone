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
      String sql = 'create table Serie_link(serieLink varchar(200))';
      await db.execute(sql);

      sql = 'create table Film_link(nameList INTERGER PRIMARY KEY, filmsLink varchar(200));';
      await db.execute(sql);

      sql = 'create table News(nameList INTERGER PRIMARY KEY, newsLink varchar(200), ImageLink varchar(200), title varchar(100), subtitle varchar(100), genre varchar(100), month varchar(20), day varchar(20));';
      await db.execute(sql);

      sql = 'create table tradicionalSerieLink(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table onTopSerieLink(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table watchAgainSerieLink(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table Users_link(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      sql = 'create table pagesList(nameList INTERGER PRIMARY KEY, link varchar(200));';
      await db.execute(sql);

      //this method will insert the values on the tables above
      insertDatas(db: db);


  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    //continue code
  }

  Future<FutureOr<void>> insertDatas({
    required Database db,
  }) async{
    List series = NetflixDatabase.series;
    String sql;

    for (int i = 0; i < series.length; i++) {
      sql = 'insert into  Serie_link(serieLink) values (\'${series[i].link}\');';
      print(sql); 
      await db.execute(sql);
    }

  }

}
