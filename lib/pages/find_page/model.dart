import 'package:flutter/material.dart';

class PartitionList {
  PartitionList(
    this.title,
    this.icon,
  );

  String title;
  IconData icon;
}

class ImageList {
  ImageList(
    this.title,
    this.image,
  );

  final String title;
  final String image;
}

class TitleList {
  TitleList(
    this.title,
    this.subtitle,
    this.image,
  );

  final String title;
  final String subtitle;
  final String image;
}

class BroadcastList {
  BroadcastList(
    this.title,
    this.type,
  );

  String title;
  String type;
}
