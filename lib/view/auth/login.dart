// main module
import 'package:flutter/material.dart';

// common module
import '../../common/messages.dart';

// view module
//import '../dice/dice.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('image/flogo.png'),
                    Text(
                      'Login with Facebook',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Image.asset('image/glogo.png'),
                    ),
                  ],
                ),
                color: Color(0xFF334D92),
                onPressed: () {},
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    Text(
                      'Login with Email',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                color: Colors.green,
                onPressed: () {},
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showErrorMessage(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text(
      Messages.invalidAccount(),
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.redAccent,
  ));
}
