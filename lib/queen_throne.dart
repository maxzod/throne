import 'package:flutter/material.dart';
import 'package:throne/queen_helper.dart';
import 'package:throne/loyal_helpers/share_prefrancess.dart';

class QueenThrone extends StatefulWidget {
  final Widget splash;
  final List<QueenHelper> helpers;
  final Widget child;
  QueenThrone({
    this.helpers,
    @required this.splash,
    @required this.child,
  });

  @override
  _QueenThroneState createState() => _QueenThroneState();
}

class _QueenThroneState extends State<QueenThrone> {
  Widget view;
  prepareTheThrone() async {
    List<QueenHelper> helpers = [QueenPrefs()];
    if (widget.helpers != null) {
      helpers.addAll(widget.helpers);
    }
    for (int i = 0; i < helpers.length; i++) {
      await helpers[i].createHelper();
    }
    setState(() {
      view = widget.child;
    });
  }

  @override
  void initState() {
    view = widget.splash;
    prepareTheThrone();
    super.initState();
  }

  @override
  Widget build(_) => view;
}
