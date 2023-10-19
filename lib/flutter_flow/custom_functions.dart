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
import '/auth/firebase_auth/auth_util.dart';

double? calculateRange(
  double? batterySizeKwh,
  double? currentChargePercentage,
  double averageConsumptionKwh,
) {
  // calculate range is (batterySizeKwh *  currentChargePercentage) /averageConsumptionKwh
  if (batterySizeKwh == null ||
      currentChargePercentage == null ||
      averageConsumptionKwh == null) {
    return null;
  }
  return (batterySizeKwh * currentChargePercentage) / averageConsumptionKwh;
}

double calculateParkingPrice(
  DateTime parkingFrom,
  DateTime parkingTo,
) {
  double price =
      (parkingTo.millisecondsSinceEpoch - parkingFrom.millisecondsSinceEpoch) /
          1000 /
          60 *
          0.03333333333333;
  double roundedPrice = double.parse((price).toStringAsFixed(2));
  return roundedPrice;
}

String calculateChargingTimeUntilFull(
  double chargingSpeed,
  double batterySize,
  double currentCharge,
) {
  final double capacityToCharge = batterySize - currentCharge;
  final double time = capacityToCharge / chargingSpeed * 60;
  return getTimeStringFromMinutes(time);
}

int stringToInt(String string) {
  int tries;

  try {
    tries = int.parse(string);
  } catch (err) {
    return 0;
  }

  return tries;
}

double calculatReservationPrice(
  DateTime reservationFrom,
  DateTime reservationTo,
) {
  double price = (reservationTo.millisecondsSinceEpoch -
          reservationFrom.millisecondsSinceEpoch) /
      1000 /
      60 *
      0.01;
  double roundedPrice = double.parse((price).toStringAsFixed(2));
  return roundedPrice;
}

String? calculateChargingTimeUntilDesiredCharge(
  double chargingSpeed,
  double currentCharge,
  int? desiredCharge,
) {
  if (desiredCharge != null) {
    if (desiredCharge > currentCharge) {
      double capacityToCharge = desiredCharge - currentCharge;
      double time = capacityToCharge / chargingSpeed * 60;
      return getTimeStringFromMinutes(time);
    }
  }
  return null;
}

String getTimeStringFromMinutes(double value) {
  final int hour = value ~/ 60;
  final int minutes = (value % 60).floor();
  return '${hour.toString().padLeft(2, "0")}h ${minutes.toString().padLeft(2, "0")}m';
}
