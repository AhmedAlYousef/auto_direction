library auto_direction;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class AutoDirection  extends StatefulWidget{

  final String text;
  final Widget childWidget;
  AutoDirection({Key key, this.text, this.childWidget}) : super(key: key);

  @override
  _AutoDirectionState createState() => _AutoDirectionState();

}

class _AutoDirectionState extends State<AutoDirection>{

  String text;
  Widget childWidget;

  @override
  Widget build(BuildContext context) {
    text = widget.text;
    childWidget = widget.childWidget;
    return Directionality(
      textDirection: intl.Bidi.detectRtlDirectionality(text)? TextDirection.rtl : TextDirection.ltr,
      child: childWidget
    );
  }

}
