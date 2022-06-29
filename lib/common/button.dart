// main module
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.image, this.text, this.color, this.image, this.image})

  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('image/glogo.png'),
            Text(
              'Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            Opacity(
              opacity: 0.0,
              child: Image.asset('image/flogo.png'),
            ),
          ],
        ),
        color: Colors.white,
        onPressed: () {},
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
    );
  }
}
