import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.network(
            'https://picsum.photos/200/300/?blur=3',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20),
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),
              Stack(
                children: <Widget>[
                  new Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: new TextField(
                            autofocus: false,
                            autocorrect: false,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Username',
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  const Radius.circular(10),
                                ),
                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                              contentPadding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                        new TextField(
                          autofocus: false,
                          autocorrect: false,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: new OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                const Radius.circular(10),
                              ),
                            ),
                            fillColor: Colors.grey[200],
                            filled: true,
                            contentPadding: EdgeInsets.all(20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Forgot Password ?',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/2');
                                },
                                child: Text('Login'),
                                color: Colors.red,
                                textColor: Colors.white,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Text('SignUp'),
                              color: Colors.red,
                              textColor: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      );
  }
}