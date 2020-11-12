import 'package:flutter/material.dart';

class ColorButton extends StatefulWidget {
  Color mainColor, secondColor;
  IconData iconData;
  var textIcon;


  @override
  _ColorButtonState createState() =>
      _ColorButtonState(mainColor, secondColor, iconData, textIcon);

  ColorButton(this.mainColor, this.secondColor, this.iconData, this.textIcon,
      );
}

class _ColorButtonState extends State<ColorButton> {
  bool isPressed = false;
  Color mainColor, secondColor;
  IconData iconData;
  var textIcon;

  _ColorButtonState(this.mainColor, this.secondColor, this.iconData,
      this.textIcon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        Duration(milliseconds: 1);
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (details) {
        Duration(milliseconds: 1);
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapCancel: () {
        Duration(milliseconds: 1);
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ],
                  color: (isPressed) ? secondColor : mainColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      iconData,
                      color: (isPressed) ? mainColor : Colors.deepOrange,
                    ),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  Text(
                    textIcon,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: (isPressed) ? mainColor : Colors.black54),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
