import 'package:ogii/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Mairie",
    numOfFiles: 5328,
    svgSrc: "assets/images/mairie.jpg",
    totalStorage: "2.9GB",
    color: primaryColor,
    percentage: 70,
  ),
  CloudStorageInfo(
    title: "Police",
    numOfFiles: 4328,
    svgSrc: "assets/images/police.jpg",
    totalStorage: "2.5GB",
    color: Color(0xFFFFA113),
    percentage: 60,
  ),
  CloudStorageInfo(
    title: "Justice",
    numOfFiles: 6328,
    svgSrc: "assets/images/justice.jpg",
    totalStorage: "3GB",
    color: Color(0xFFA4CDFF),
    percentage: 75,
  ),
  CloudStorageInfo(
    title: "ONT",
    numOfFiles: 1328,
    svgSrc: "assets/images/bko.jpg",
    totalStorage: "1.5GB",
    color: Color(0xFF007EE5),
    percentage: 35,
  ),
];
