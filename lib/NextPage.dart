import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.all(20),
            child: CircleAvatar(
              radius: 80,
              backgroundImage:
                  NetworkImage('https://picsum.photos/id/1025/200/300'),
            ),
          ),
          MyInfo(),
          Button(),
        ],
      ),
    );
  }
}

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Welcome ! This is ',
          textScaleFactor: 2,
          style: TextStyle(
            color: Colors.deepOrange,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Onkar\nDherange',
          textScaleFactor: 4,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '                 - I\'m a Flutter enthusiast and trying to \n learn it with all my dedication \n now Lets see where it goes !!',
          textScaleFactor: 1.5,
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: new MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Continue'),
          ),
        ),
        new MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ],
    ));
  }
}
