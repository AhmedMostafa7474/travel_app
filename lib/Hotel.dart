import 'package:flutter/material.dart';

class Hotel1 {
  String image;
  String name;
  String address;
  int price;

  Hotel1({
    this.name,
    this.price,
    this.image,
    this.address,
  }
      );
}
final List <Hotel1> hotel=
    [
Hotel1(
  name: " Hôtel Juliana Paris",
  price: 100,
  address: "Effiel Tower street",
  image:"assets/hotel1.jpg"
),
      Hotel1(
          name: "Las Vegas",
          price: 100,
          address: "Effiel Tower street",
          image:"assets/hotel2.jpg"
      ),
    ];

