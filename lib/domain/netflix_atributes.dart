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






