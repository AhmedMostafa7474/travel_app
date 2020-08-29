
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Activi.dart';
import 'Hotel.dart';

class Destination
{
  String image ;
  String country;
  String city;
  String describtion;
  List<Activity> activ;
  List<Hotel1> hotels1;
  Destination(
  {
  this.image,
    this.city,
    this.country,
    this.describtion,
this.activ,
    this.hotels1,
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
    hotels1: hotelMadrid,
      activ: activMadrid,
      country: "Espn",
      city: "Madrid",
      describtion: "Visit Madrid for amazing adventure",
      image: "assets/madrid.jpg",

  ),
  Destination(
    hotels1: hotelberlin,
    activ: activberlin,
    country: "German",
    city: "Berlin",
    describtion: "Visit Berlin for amazing adventure",
    image:"assets/berlin.jpg" ,
  ),
  Destination(
    hotels1: hotelfrance,
    activ: activfrance,
    country: "France",
    city: "Paris",
    describtion: "Visit Paris for amazing adventure",
    image:"assets/paris.jpg" ,

  ),
  Destination(
    hotels1: hotelGizq,
    activ: activGiza,
    country: "Egypt",
    city: "Giza",
    describtion: "Visit Giza for amazing adventure",
    image: "assets/Giza.jpg" ,
  ),
  Destination(
    hotels1: hoteltokyo,
    activ: activTokyo,
    country: "Japan",
    city: "Tokyo",
    describtion: "Visit Tokyo for amazing adventure",
    image: "assets/tokyo.jpg",
  ),
];
List<Hotel1> hotelfrance=[
  Hotel1(
      name: " Hôtel Juliana Paris",
      price: 200,
      address: "Effiel Tower street",
      image:"assets/hotel1.jpg"
      , feathers: fe
  ),
  Hotel1(
      name: "Hotel Las Vegas",
      price: 150,
      address: "Effiel Tower street",
      image:"assets/hotel2.jpg"
      ,feathers: fe2
  ),
  Hotel1(
      name: "Hotel la Nouvelle Republique",
      price: 120,
      address: "Effiel Tower street",
      image:"assets/Hotel.jpg"
      ,feathers: fe
  ),
 ];
List<Hotel1> hotelberlin=[
  Hotel1(
      name: " Hotel de Rome",
      price: 300,
      address: "Berlin",
      image:"assets/berlinh1.jpg",feathers: fe
  ),
  Hotel1(
      name: "The Ritz-Carlton, Berlin",
      price: 150,
      address: "Berlin",
      image:"assets/berlinh2.jpg",feathers: fe2
  ),
  Hotel1(
      name: "Berlin Das Stue",
      price: 150,
      address: "Berlin",
      image:"assets/berlinh3.jpg"
      ,feathers: fe3
  ),
];
List<Hotel1> hotelMadrid=[
  Hotel1(
      name: " Gran Hotel Ingles",
      price: 200,
      address: "Madrid",
      image:"assets/madridh1.jpg"
      ,feathers: fe
  ),
  Hotel1(
      name: "Bless Hotel Madrid",
      price: 150,
      address: "Madrid",
      image:"assets/madridh2.jpg"
      ,feathers: fe2
  ),
  Hotel1(
      name: "The Level at Melia Castilla",
      price: 150,
      address: "Madrid",
      image:"assets/madridh3.jpg"
      ,feathers: fe2
  ),
];
List<Hotel1> hoteltokyo=[
  Hotel1(
      name: " HMandarin Oriental",
      price: 200,
      address: "tokyo",
      image:"assets/tokyo1.jpg"
      ,feathers: fe
  ),
  Hotel1(
      name: "The Ritz-Carlton",
      price: 150,
      address: "tokyo",
      image:"assets/tokyo2.jpg"
      ,feathers: fe2
  ),
  Hotel1(
      name: "HOSHINOYA",
      price: 150,
      address: "tokyo",
      image:"assets/tokyo3.jpg"
      ,feathers: fe3
  ),
];
List<Hotel1> hotelGizq=[
  Hotel1(
      name: "Marriott Mena House",
      price: 200,
      address: "Gizq",
      image:"assets/giza1.jpg"
      ,feathers: fe
  ),
  Hotel1(
      name: "Four Seasons Hotel",
      price: 150,
      address: "Gizq",
      image:"assets/giza2.jpg"
      ,feathers: fe3

  ),
  Hotel1(
      name: "Sheraton Cairo Hotel",
      price: 150,
      address: "Gizq",
      image:"assets/giza3.jpg"
      ,feathers: fe2
  ),
];

final List <Row> fe=
[
  Row(
    children: [
      Icon(FontAwesomeIcons.swimmingPool,size: 20.0,color: Colors.grey,),
      SizedBox(width: 5.0,),

      Text("Pool")
    ],
  ),
  Row(
    children: [
      Icon(Icons.directions_car,size: 20.0,color: Colors.grey,),
      SizedBox(width: 5.0,),
      Text("Barking")
    ],
  ),
  Row(
    children: [
      Icon(Icons.restaurant,size: 20.0,color: Colors.grey,),
      SizedBox(width: 5.0,),
      Text("Restaurant")
    ],
  )
];

final List <Row> fe2=
[
  Row(
    children: [
      Icon(Icons.room_service,size: 20.0,color: Colors.grey,),
      SizedBox(width: 5.0,),

      Text("Room service")
    ],
  ),
  Row(
    children: [
      Icon(Icons.directions_car,size: 20.0,color: Colors.grey,),
      SizedBox(width: 5.0,),

      Text("Barking")
    ],
  ),
  Row(
    children: [
      Icon(Icons.restaurant,size: 20.0,color: Colors.grey,),
      SizedBox(width: 5.0,),

      Text("Restaurant")
    ],
  )
];

final List <Row> fe3=
[
  Row(
    children: [
      Icon(Icons.local_offer,size: 20.0,color: Colors.grey,),
      SizedBox(width: 5.0,),

      Text("Special offer")
    ],
  ),
  Row(
    children: [
      Icon(Icons.directions_car,size: 20.0,color: Colors.grey,),
      SizedBox(width: 5.0,),
      Text("Barking")
    ],
  ),
  Row(
children: [
  SizedBox(width: 5.0,),
],
  )
];
