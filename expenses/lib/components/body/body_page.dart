import 'dart:io';
import 'package:expenses/components/chart/chart.dart';
import 'package:expenses/components/transactions/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/cupertino.dart';

class MyBodyPage extends StatelessWidget {
  final bool _showChart = false;
  final double avalableHeight;
  final List<Transaction> transactions;
  final List<Transaction> recentTransactions;
  final dynamic removeTransaction;

  const MyBodyPage({
    super.key,
    required this.avalableHeight,
    required this.transactions,
    required this.recentTransactions,
    required this.removeTransaction,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (_showChart || !isLandscape)
              SizedBox(
                height: avalableHeight * (isLandscape ? 0.8 : 0.30),
                child: Chart(recentTransaction: recentTransactions),
              ),
            if (!_showChart || !isLandscape)
              SizedBox(
                height: avalableHeight *
                    (Platform.isIOS
                        ? (isLandscape ? 0.80 : 1)
                        : (isLandscape ? 0.96 : 0.60)),
                child: TransactionList(transactions, removeTransaction),
              ),
          ],
        ),
      ),
    );
  }
}
