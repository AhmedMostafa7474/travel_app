import 'dart:core';

import 'package:flutter/material.dart';

class Activity
{
  String image ;
  String name;
  String type;
List<String> start_time;
int rating;
  int price;
  Activity(
      {
        this.image,
        this.name,
        this.price,
        this.rating,
        this.start_time,
        this.type,
      }
      );

}
