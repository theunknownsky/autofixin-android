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

double getReviewRatingAverage(
  int shopStars,
  int shopReviewCount,
) {
  return shopStars / shopReviewCount;
}

int getShopTotalProfit(List<TransactionsRecord> transactions) {
  int totalProfit = 0;

  for (int i = 0; i < transactions.length; i++) {
    totalProfit += transactions[i].transactionServiceFee;
  }

  return totalProfit;
}

int getTotalCommission(List<TransactionsRecord> transactions) {
  int totalComms = 0;

  for (int i = 0; i < transactions.length; i++) {
    if (transactions[i].transactionIsPaid == false ||
        transactions[i].transactionIsPaid == null) {
      int commission = (transactions[i].transactionServiceFee * 0.07).toInt();
      totalComms += commission;
    }
  }
  return totalComms;
}

int getAppointmentAccepted(List<AppointmentsRecord> status) {
  return status
      .where((record) => [2, 3, 4, 5].contains(record.appointmentStatus))
      .length;
}

int getAppointmentDeclined(List<AppointmentsRecord> status) {
  return status
      .where((record) => [0].contains(record.appointmentStatus))
      .length;
}

int getAppointmentPending(List<AppointmentsRecord> status) {
  return status
      .where((record) => [1].contains(record.appointmentStatus))
      .length;
}

int getTotalCustomer(List<AppointmentsRecord> customer) {
  return customer
      .where((record) => [0, 1, 2, 3, 4, 5].contains(record.appointmentStatus))
      .length;
}

int getDaysSinceRegistration(List<UsersRecord> registrationDays) {
  int totalDays = 0;

  for (UsersRecord user in registrationDays) {
    if (user.createdTime != null) {
      totalDays += DateTime.now().difference(user.createdTime!).inDays;
    }
  }

  return totalDays;
}

int getGrandTotal(List<TransactionsRecord> total) {
  int grandTotal = 0;

  for (TransactionsRecord transaction in total) {
    grandTotal += transaction.transactionServiceFee ?? 0;
  }

  return grandTotal;
}

int getNegativeNum(int num) {
  return (-num);
}

bool checkShopIfOpen(
  DateTime shopOpenTime,
  DateTime shopCloseTime,
  DateTime currentTime,
) {
  bool isShopOpened = false;

  var openTime =
      TimeOfDay(hour: shopOpenTime.hour, minute: shopOpenTime.minute);
  var closeTime =
      TimeOfDay(hour: shopCloseTime.hour, minute: shopCloseTime.minute);
  var current = TimeOfDay(hour: currentTime.hour, minute: currentTime.minute);

  bool isOpen = (openTime.hour < current.hour) ||
      (openTime.hour == current.hour && openTime.minute <= current.minute);
  bool isClose = (closeTime.hour > current.hour) ||
      (closeTime.hour == current.hour && closeTime.minute >= current.minute);

  isShopOpened = (isOpen && isClose);

  return isShopOpened;
}
