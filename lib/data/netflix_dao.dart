import 'package:netflix_clone/data/netflix_datas_helper.dart';
import 'package:netflix_clone/domain/netflix_atributes.dart';
import 'package:sqflite/sqflite.dart';

class NetflixDao {

  Future<List<NetflixSeries>> getNetflixLonginObjects() async{

    DBHelper dpHelper = DBHelper();
    Database db = await dpHelper.initDB();
    String sql;

    sql = "select * from Serie_link";
    final result= db.rawQuery(sql);
    print(result);

    List<NetflixSeries> seriesList;

    for (var i in result) {
      NetflixSeries imagesSeries =
    }

    return '';
  }

}
