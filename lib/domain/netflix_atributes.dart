import 'package:flutter/material.dart';

class NetflixLogin{

  final String title;
  final String logo;

  NetflixLogin({
    required this.title,
    required this.logo,
  });
}

class NetflixSeries{

  final String link;
  final String name = "Series";
  final IconData first_icon = Icons.info;
  final IconData second_icon = Icons.more_vert;

  NetflixSeries({
    required this.link,
  });

  /*
    NetflixSeries.fromJson(Map<String, dynamic> json) {
      link = json[''];
    }

    PacoteTuristico.fromJson(Map<String, dynamic> json) {
      nome = json['head'];
      imagem = json['url_image'];
      cidade = json['city'];
      titulo = json['title'];
      transporte = json['transport'];
      validade = json['validity'];
      precoAntigo = json['old_price'];
      precoAtual = json['current_price'];
      numDiarias = json['nights'];
      desconto = json['discount'];
      numPessoas = json['persons'];
      numParcelas = 12;
    }
  */
}


class NetflixFilms{

  final String link;
  final String name = "Filmes";
  final IconData first_icon = Icons.info;
  final IconData second_icon = Icons.more_vert;

  NetflixFilms({
    required this.link,
  });
}

//no banco, tem os links. Portanto, preciso de um json com os objetos correspondentes, para pegar esses links
class NetflixNews{

  final String link;
  final String image;
  final String title;
  final String subtitle;
  final String genre;
  final String month;
  final String day;
  final IconData firstIcon = Icons.notifications;
  final IconData secondIcon = Icons.info;

  NetflixNews({
    required this.link,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.genre,
    required this.month,
    required this.day,
  });
}

class UserAvatar{

  final String link;

  UserAvatar({
    required this.link,
  });
}
