import 'package:flutter/material.dart';
import 'package:login_screen/reusableWidgets/containerBoxDecoration.dart';
import 'package:login_screen/reusableWidgets/gradientRaisedButton.dart';

class Button extends StatelessWidget {
  final spaceLeftRight;
  final double defFontSize;
  Button(this.defFontSize, this.spaceLeftRight);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: spaceLeftRight, right: spaceLeftRight),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: ContainerBox.getBoxDecoration(
                  shadowColor: Colors.black.withOpacity(0.0),
                  blurRadius: 13,
                  borderRadius: BorderRadius.circular(10)),
              child: GradientRaisedButton(defFontSize),
            ),
          ],
        ),
      ),
    );
  }
}
