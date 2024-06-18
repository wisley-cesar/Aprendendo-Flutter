import 'dart:io';
import 'dart:math';
import 'package:expenses/components/my_app_bar/app_bar_android.dart';
import 'package:expenses/components/my_app_bar/app_bar_ios.dart';
import 'package:expenses/components/body/body_page.dart';
import 'package:expenses/components/transactions/transaction_form.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  final List<Transaction> _transactions = [];
  bool _showChart = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  List<Transaction> get _recentTransactions {
    return _transactions.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract(
        const Duration(days: 7),
      ));
    }).toList();
  }

  _addTransaction(String title, double value, DateTime date) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: date,
    );
    setState(
      () {
        _transactions.add(newTransaction);
      },
    );
    Navigator.of(context).pop();
  }

  _removeTransaction(String id) {
    setState(() {
      _transactions.removeWhere((tr) => tr.id == id);
    });
  }

  _opentransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(_addTransaction);
      },
    );
  }

  Widget _getIconButton(IconData icon, Function() fn) {
    return Platform.isIOS
        ? GestureDetector(onTap: fn, child: Icon(icon))
        : IconButton(icon: Icon(icon), onPressed: fn);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    final iconList = Platform.isIOS ? CupertinoIcons.list_bullet : Icons.list;
    final chartList =
        Platform.isIOS ? CupertinoIcons.graph_square_fill : Icons.show_chart;
    final List<Widget> actions = [
      if (isLandscape)
        _getIconButton(
          _showChart ? iconList : chartList,
          () {
            setState(() {
              _showChart = !_showChart;
            });
          },
        ),
      _getIconButton(
        Platform.isIOS ? CupertinoIcons.add : Icons.add,
        () => _opentransactionFormModal(context),
      ),
    ];

    final appBarIos =
        MyAppBarIos(actions: actions) as ObstructingPreferredSizeWidget;

    final appBarAndroid =
        MyAppBarAndroid(actions: actions) as PreferredSizeWidget;

    final avalableHeightIos = mediaQuery.size.height -
        appBarIos.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final avalableHeightAndroid = mediaQuery.size.height -
        appBarAndroid.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bodyPage = MyBodyPage(
        avalableHeight:
            Platform.isIOS ? avalableHeightIos : avalableHeightAndroid,
        transactions: _transactions,
        recentTransactions: _recentTransactions,
        removeTransaction: _removeTransaction);

    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: appBarIos,
            child: bodyPage,
          )
        : Scaffold(
            appBar: appBarAndroid,
            body: bodyPage,
            floatingActionButton: Platform.isIOS
                ? Container()
                : FloatingActionButton(
                    onPressed: () => _opentransactionFormModal(context),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    child: const Icon(Icons.add),
                  ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
  }
}
