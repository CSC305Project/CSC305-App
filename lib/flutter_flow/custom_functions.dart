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
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

double? addMonthExpenses(List<TransactionsRecord> transactions) {
  final now = DateTime.now();
  final currentYear = now.year;
  final currentMonth = now.month;
  double total = 0.0;

  // If nothing was passed, return 0.
  if (transactions == null) {
    return 0.0;
  }

  // If the passed parameter is a list of TransactionsRecord, iterate through it.
  for (final transaction in transactions) {
    DateTime? createdDate;
    // Convert createdTime to DateTime if needed.
    if (transaction.createdTime is Timestamp) {
      createdDate = (transaction.createdTime as Timestamp).toDate();
    } else if (transaction.createdTime is DateTime) {
      createdDate = transaction.createdTime as DateTime;
    }
    // Only add the amount if the transaction was created in the current month/year.
    if (createdDate != null &&
        createdDate.year == currentYear &&
        createdDate.month == currentMonth) {
      total += transaction.amount?.toDouble() ?? 0.0;
    }
  }

  return total;
}

String? newCustomFunction(
  double? monthlyBudget,
  double? amountSpent,
) {
  // given the monthly budget, and the amount spent, calculate how much  percent of the budget tey have left and print a short disclaimer or warning if close to over, and if over budget calculat the percent they overspent
  if (monthlyBudget == null || amountSpent == null || monthlyBudget <= 0) {
    return 'Invalid budget or amount spent.';
  }

  double remainingBudget = monthlyBudget - amountSpent;
  double percentLeft = (remainingBudget / monthlyBudget) * 100;

  if (remainingBudget < 0) {
    double percentOver = (amountSpent / monthlyBudget) * 100 - 100;
    return 'You have overspent by ${percentOver.toStringAsFixed(2)}% this month.';
  } else if (percentLeft < 20) {
    return 'Be cautious, you have only ${percentLeft.toStringAsFixed(2)}% of your budget left.';
  } else {
    return 'You have ${percentLeft.toStringAsFixed(2)}% of your budget left.';
  }
}
