// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future turnTransactToPaid(List<TransactionsRecord> transactions) async {
  for (int i = 0; i < transactions.length; i++) {
    if (transactions[i].transactionIsPaid == false ||
        transactions[i].transactionIsPaid == null) {
      await transactions[i].reference.update({
        'transaction_is_paid': true,
      });
    }
  }
}
