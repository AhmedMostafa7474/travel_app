
import 'dart:core';
import 'package:flutter/material.dart';

import 'Activi.dart';

class Destination
{
  String image ;
  String country;
  String city;
  String describtion;
  List<Activity> activ;
  Destination(
  {
  this.image,
    this.city,
    this.country,
    this.describtion,
this.activ,
  }
      );
}
List<Activity> activfrance=[
  Activity(
   image: "assets/disne.jpg",
    name: "disneyland"
      ,price: 30,
    rating: 4,
    start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/Cour_royale_de_Versailles.jpg",
      name: "Versailles"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/Louver.jpg",
      name: "louvre museum"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
];
List<Activity> activberlin=[
  Activity(
      image: "assets/regierungsviertel01_DL_PPT_0.jpg",
      name: "Brandenburg Gate"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/148.jpg",
      name: "Berlin Tower"
      ,price: 30,
      rating: 4,
      start_time: ["11:00 am","2:00 pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/Gendarmenmarkt_c_Scholvien_DL_PPT_0.jpg",
      name: "Gendarmenmarkt"
      ,price: 30,
      rating: 4,
      start_time: ["2:00 pm","4:00pm"]
      ,type: "tour"
  ),
];
List<Activity> activMadrid=[
  Activity(
      image: "assets/spain-madrid-prado-museum.jpg",
      name: "Prado Museum"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/palacio-de-cristal-parque-del-retiro.jpg",
      name: "Buen Retiro Park and the Crystal Palace"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/royal-palace-0.jpg",
      name: "Royal Palace and Gardens"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
];
List<Activity> activTokyo=[
  Activity(
      image: "assets/japan-tokyo-asakusa-senso-ji-temple.jpg",
      name: "The Sensō-ji Temple"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/japan-tokyo-ueno-park-zoo.jpg",
      name: "Ueno Park and Zoo"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/japan-tokyo-meiji-shrine.jpg",
      name: "The Meiji Shrine"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
];
List<Activity> activGiza=[
  Activity(
      image: "assets/The-Great-Pyramid-of-Giza.jpg",
      name: " The Great Pyramid of Giza"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/Cour_royale_de_Versailles.jpg",
      name: "Versailles"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
  Activity(
      image: "assets/egy.jpg",
      name: "The Grand Egyptian Museum"
      ,price: 30,
      rating: 4,
      start_time: ["9:00 pm","11:00pm"]
      ,type: "tour"
  ),
];
List<Destination> Destin=[
  Destination(
      activ: activMadrid,
      country: "Espn",
      city: "Madrid",
      describtion: "Visit Madrid for amazing adventure",
      image: "assets/madrid.jpg",

  ),
  Destination(
    activ: activberlin,
    country: "German",
    city: "Berlin",
    describtion: "Visit Berlin for amazing adventure",
    image:"assets/berlin.jpg" ,
  ),
  Destination(
    activ: activfrance,
    country: "France",
    city: "Paris",
    describtion: "Visit Paris for amazing adventure",
    image:"assets/paris.jpg" ,

  ),
  Destination(
    activ: activGiza,
    country: "Egypt",
    city: "Giza",
    describtion: "Visit Giza for amazing adventure",
    image: "assets/Giza.jpg" ,
  ),
  Destination(
    activ: activTokyo,
    country: "Japan",
    city: "Tokyo",
    describtion: "Visit Tokyo for amazing adventure",
    image: "assets/tokyo.jpg",
  ),
];
