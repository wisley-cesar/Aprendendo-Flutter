import 'package:flutter/cupertino.dart';

class MyAppBarIos extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final List<Widget> actions;
  const MyAppBarIos({super.key, required this.actions});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: const Text('Despesas Pessoais'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kMinInteractiveDimensionCupertino);

  @override
  bool shouldFullyObstruct(BuildContext context) => true;
}
