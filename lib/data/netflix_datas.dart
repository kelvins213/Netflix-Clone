import 'package:netflix_clone/domain/netflix_atributes.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/avatar_page.dart';
import 'package:netflix_clone/pages/download_page.dart';
import 'package:netflix_clone/pages/game_page.dart';
import 'package:netflix_clone/pages/home_page.dart';
import 'package:netflix_clone/pages/news_page.dart';

class NetflixDatabase{

  static NetflixLogin login = NetflixLogin(title: "Sign In", logo: "https://gkpb.com.br/wp-content/uploads/2016/06/novo-icone-identidade-visual-logo-netflix-blog-gkpb.jpg");
  static UserAvatar user1 = UserAvatar(link: 'https://geekninja.com.br/wp-content/uploads/2022/07/Bastard.jpg');
  static UserAvatar user2 = UserAvatar(link: 'https://geekninja.com.br/wp-content/uploads/2022/07/Bastard.jpg');
  static UserAvatar user3 = UserAvatar(link: 'https://geekninja.com.br/wp-content/uploads/2022/07/Bastard.jpg');
  static UserAvatar user4 = UserAvatar(link: 'https://geekninja.com.br/wp-content/uploads/2022/07/Bastard.jpg');

  static NetflixSeries serie1 = NetflixSeries(link: "https://img1.ak.crunchyroll.com/i/spire2/f31efd8a9acebc82b2ebbfba0cc2cb2c1646147551_main.jpg");
  static NetflixSeries serie2 = NetflixSeries(link: "https://upload.wikimedia.org/wikipedia/pt/e/e9/Breaking_bad_2_temporada_poster.jpg");
  static NetflixSeries serie3 = NetflixSeries(link: "https://br.web.img2.acsta.net/pictures/21/09/05/23/33/4941501.jpg");
  static NetflixSeries serie4 = NetflixSeries(link: "https://img1.ak.crunchyroll.com/i/spire3/aa90db8dccdb4b978881fe41629bb5f71654083597_main.jpg");
  static NetflixSeries serie5 = NetflixSeries(link: "https://www.infoanime.com.br/wa_1_p/pa_12i2wgk42q/big_yugiohduel.jpg");

  static NetflixFilms film1 = NetflixFilms(link: "https://static.stealthelook.com.br/wp-content/uploads/2022/01/o-ranking-dos-filmes-mais-assistidos-da-netflix-imperdoavel-20220113201454.jpg");
  static NetflixFilms film2 = NetflixFilms(link: "https://br.web.img3.acsta.net/c_310_420/pictures/22/08/26/16/46/2639434.jpg");
  static NetflixFilms film3 = NetflixFilms(link: "https://br.web.img2.acsta.net/c_310_420/pictures/22/05/24/16/14/3798761.png");
  static NetflixFilms film4 = NetflixFilms(link: "https://static.stealthelook.com.br/wp-content/uploads/2022/01/o-ranking-dos-filmes-mais-assistidos-da-netflix-enola-holmes-20220113201349.jpg");
  static NetflixFilms film5 = NetflixFilms(link: "http://pm1.narvii.com/7444/9676cece55a35e3af165e788f5f31314bd7df3f5r1-666-1000v2_uhq.jpg");

  static NetflixNews new1 = NetflixNews(link: 'https://trecobox.com.br/wp-content/uploads/2021/12/bleach.jpg', image: 'https://i.pinimg.com/originals/b7/93/59/b79359878cf6027a55356c79a2333dfd.png', title: 'A nova saga estreia em outubro, aqui, na Netflix.', subtitle: 'Este anime de a??ao conta a historia de Ichigo Kurosaki, que liberou seu bankai com apenas 17 anos', genre: 'Shounen', month: 'OUC', day: '14');
  static NetflixNews new2 = NetflixNews(link: 'https://trecobox.com.br/wp-content/uploads/2021/12/bleach.jpg', image: 'https://i.pinimg.com/originals/b7/93/59/b79359878cf6027a55356c79a2333dfd.png', title: 'A nova saga estreia em outubro, aqui, na Netflix.', subtitle: 'Este anime de a??ao conta a historia de Ichigo Kurosaki, que liberou seu bankai com apenas 17 anos', genre: 'Shounen', month: 'OUC', day: '14');
  static NetflixNews new3 = NetflixNews(link: 'https://trecobox.com.br/wp-content/uploads/2021/12/bleach.jpg', image: 'https://i.pinimg.com/originals/b7/93/59/b79359878cf6027a55356c79a2333dfd.png', title: 'A nova saga estreia em outubro, aqui, na Netflix.', subtitle: 'Este anime de a??ao conta a historia de Ichigo Kurosaki, que liberou seu bankai com apenas 17 anos', genre: 'Shounen', month: 'OUC', day: '14');
  static NetflixNews new4 = NetflixNews(link: 'https://trecobox.com.br/wp-content/uploads/2021/12/bleach.jpg', image: 'https://i.pinimg.com/originals/b7/93/59/b79359878cf6027a55356c79a2333dfd.png', title: 'A nova saga estreia em outubro, aqui, na Netflix.', subtitle: 'Este anime de a??ao conta a historia de Ichigo Kurosaki, que liberou seu bankai com apenas 17 anos', genre: 'Shounen', month: 'OUC', day: '14');
  static NetflixNews new5 = NetflixNews(link: 'https://trecobox.com.br/wp-content/uploads/2021/12/bleach.jpg', image: 'https://i.pinimg.com/originals/b7/93/59/b79359878cf6027a55356c79a2333dfd.png', title: 'A nova saga estreia em outubro, aqui, na Netflix.', subtitle: 'Este anime de a??ao conta a historia de Ichigo Kurosaki, que liberou seu bankai com apenas 17 anos', genre: 'Shounen', month: 'OUC', day: '14');

  static String link1 = "https://sm.ign.com/ign_br/screenshot/default/sandman-poster-1_fv1d.jpg";
  static String link2 = "https://i.pinimg.com/564x/5a/ff/9f/5aff9f15e4a54ce2df3e26659ee7d364.jpg";
  static String link3 = "https://static.wikia.nocookie.net/blacklist/images/9/99/The_Blacklist_Season_2.jpg/revision/latest?cb=20170505191018";
  static String link4 = "https://static.stealthelook.com.br/wp-content/uploads/2021/11/o-ranking-das-series-mais-assistidas-da-netflix-e-porque-voce-deveria-assisti-las-sweet-tooth-20211108204454.jpg";
  static String link5 = "https://img1.ak.crunchyroll.com/i/spire3/501db6b69ced79e79a556b20cbdb9c5d1609784936_main.jpg";
  static String link6 = "https://alannsousamatos.files.wordpress.com/2010/09/ichigo-do-bleach-3.jpg";
  static String link7 = "https://danypoison.files.wordpress.com/2017/08/wp-1502748035050.jpg";
  static String link8 = "https://musicnonstop.uol.com.br/wp-content/uploads/2021/08/PT-BR_LCDP_S5_Main_Vertical_RGB_PRE.jpg";
  static String link9 = "https://img1.ak.crunchyroll.com/i/spire4/5568ffb263f6bcba85a639980b80dd9a1612993223_full.jpg";
  static String link10 = "https://cdn.culturagenial.com/imagens/death-note-cartaz.jpg";
  static String link11 = "https://images-na.ssl-images-amazon.com/images/I/81rEhhwbubL.jpg";
  static String link12 = "https://upload.wikimedia.org/wikipedia/pt/4/4b/Jujutsu_Kaisen_Cover.png";
  static String link13 = "https://image.api.playstation.com/cdn/UP0700/CUSA04897_00/9KyMrO6GjTtcrj1lC0aBENsrJroVszez.png";
  static String link14 = "https://br.web.img2.acsta.net/pictures/20/08/11/20/56/3761241.jpg";
  static String link15 = "https://img1.ak.crunchyroll.com/i/spire4/3727644b109279e2cb405ac89b0f293f1452549294_full.jpg";
  static String link16 = "https://m.media-amazon.com/images/M/MV5BMmRhZDI4ODItYTAzMC00NWQ1LTk1MTctZWYyMDY3ZTU3NWFiXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_.jpg";
  static String link17 = "https://img1.ak.crunchyroll.com/i/spire4/74dc98daf4362012ff758c7f4a13b2381649904825_main.jpg";
  static String link18 = "https://images-na.ssl-images-amazon.com/images/I/81ltLN+JacL.jpg";

  static List<NetflixSeries> series = [
    serie1,
    serie2,
    serie3,
    serie4,
    serie5,
  ];

  static List<NetflixFilms> films = [
    film1,
    film2,
    film3,
    film4,
    film5,
  ];

  static List<String>tradicionalSeries = [
    link1,
    link2,
    link3,
    link4,
    link5,
    link6,
  ];

  static List<String> onTopSeries = [
    link7,
    link8,
    link9,
    link10,
    link11,
    link12,
  ];

  static List<String> watchAgainSeries = [
    link14,
    link15,
    link16,
    link17,
    link18,
    link13,
  ];

  static List pageList = const [
    HomePage(),
    GamePage(),
    NewsPage(),
    DownloadPage(),
  ];

  static List<NetflixNews> news = [
    new1,
    new2,
    new3,
    new4,
    new5,
  ];

  static List<UserAvatar> userAvatars = [
    user1,
    user2,
    user3,
    user4,
  ];

  static Future <List<NetflixNews>> getNews() async{
    await Future.delayed(const Duration(seconds: 1));
    return  news;
  }

}