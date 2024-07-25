import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<RevisedDbRecord> simpleSearchV2(
  String search,
  List<RevisedDbRecord> docs,
) {
  // return a list of docs filtered by the search for the story name and description
  return docs
      .where((doc) =>
          doc.storyName.toLowerCase().contains(search.toLowerCase()) ||
          doc.description.toLowerCase().contains(search.toLowerCase()))
      .toList();
}

String audioPathToString(String audioPath) {
  return audioPath;
}
