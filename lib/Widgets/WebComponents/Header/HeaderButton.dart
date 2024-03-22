import 'package:flutter/material.dart';

import '../../../Pages/Values/ResponsiveApp.dart';


class HeaderButton extends StatefulWidget {

  String title;
  int index;
  bool lineIsVisible;

  HeaderButton(this.index, this.title, {super.key, this.lineIsVisible=true});

  @override
  State<StatefulWidget> createState() => _HeaderButtonState(index);

}

class _HeaderButtonState extends State<HeaderButton>{

  int index;
  final List _isMovering = [
    false,
    false,
    false,
    false,
  ];

  late ResponsiveApp responsiveApp;

  _HeaderButtonState(this.index);

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return InkWell(
      onHover: (value){
        setState(() {
          value
              ? _isMovering[this.index] = true
              : _isMovering[this.index] = false;
        });
      },
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: _isMovering[this.index]
                    ?Colors.white
                    :Colors.white70,
              ),
            ),
            SizedBox(height: 5),
            Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: widget.lineIsVisible?_isMovering[this.index]:widget.lineIsVisible,
                child: Container(
                  height: responsiveApp.lineHznButtonHeight,
                  width: responsiveApp.lineHznButtonWidth,
                  color: Colors.white,
                ),
            ),
          ],
      ),
    );
  }

}