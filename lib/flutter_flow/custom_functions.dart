import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String capitalia(String? inputtext) {
  // make a string all uppercase
  if (inputtext == null) {
    return '';
  } else
    return inputtext.toUpperCase();
}

String? initials(String? myNames) {
  // return the first letter of the word
  if (myNames == null) return null;
  final List<String> letterBag = [];
  List<String> splitNames = myNames.split(' ');
  splitNames.forEach((element) {
    letterBag.add(element[0]);
  });
  return letterBag.reduce((a, b) {
    return a + b;
  });
}
