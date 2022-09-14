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
  final String serie;
  final String name;
  final IconData first_icon;
  final IconData second_icon;

  NetflixSeries({
    required this.serie,
    required this.name,
    required this.first_icon,
    required this.second_icon,
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
