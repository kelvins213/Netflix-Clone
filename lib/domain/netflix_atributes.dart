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