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

String generateConstraintsScene(String? id) {
  // Add your function code here!
  String result =
      '[{ "key": "sceneObject", "constraint_type": "equals", "value": "$id" }]';

  return result;
}

String iSOtoDateTime(String? iso) {
  // Add your function code here!
  String result =
      DateFormat('d/MM/yyyy г., kk:mm').format(DateTime.parse(iso!));
  return result;
}

String generateConstraintsObjects(String? id) {
  // Add your function code here!
  // Add your function code here!
  String result =
      '[{ "key": "objectCreatorId", "constraint_type": "equals", "value": "$id" }]';

  return result;
}
