// main module
import 'package:flutter/material.dart';

// common module
import '../../common/messages.dart';

// view module
import '../dice/dice.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userID = TextEditingController();
  TextEditingController userPW = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Log in'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ]),
      body: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(40.0),
              ),
              Center(
                child: Image.network(
                  'https://i1.daumcdn.net/thumb/C276x260/?fname=https://blog.kakaocdn.net/dn/dX92Yv/btqNXGNhm1J/RgFXeMHHWayIlyjYygoJo0/img.png',
                  width: 150.0,
                  height: 150.0,
                ),
              ),
              Form(
                  child: Theme(
                data: ThemeData(
                    primaryColor: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 15.0))),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: userID,
                      decoration: InputDecoration(labelText: 'ID'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      controller: userPW,
                      decoration: InputDecoration(labelText: 'Password'),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 50.0,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          onPressed: () {
                            if (userID.text == 'dice' &&
                                userPW.text == '1234') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Dice()));
                            } else if (userID.text == 'dice' &&
                                userPW.text != '1234') {
                              showErrorMessage(context);
                            } else if (userID.text != 'dice' &&
                                userPW.text == '1234') {
                              showErrorMessage(context);
                            } else {
                              showErrorMessage(context);
                            }
                          }),
                    ),
                  ],
                ),
              ))
            ]),
          ),
        );
      }),
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
