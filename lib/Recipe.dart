import 'package:flutter/material.dart';

class Recipe
{
  String name, desc, imageURI;
  List<int> tags;

  Recipe(String name, String desc, List<int> tags, String imageUri)
  {
    this.name = name;
    this.desc = desc;
    this.tags = tags;
    this.imageURI = imageURI;
  }
}