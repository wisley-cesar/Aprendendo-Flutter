import 'package:flutter/material.dart';

class MyAppBarAndroid extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  const MyAppBarAndroid({super.key, required this.actions});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return AppBar(
      title: Text(
        'Despesas Pessoais',
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 20 * mediaQuery.textScaleFactor,
        ),
      ),
      actions: actions,
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
