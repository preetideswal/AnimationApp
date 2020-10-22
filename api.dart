//import 'dart:convert';
//import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

class DataApi extends StatefulWidget {
  @override
  _DataApiState createState() => _DataApiState();
}

class _DataApiState extends State<DataApi> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  var animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    animation = CurvedAnimation(parent: _controller, curve: Curves.elasticInOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Information ',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown[900],
      ),
      body: GridView.count(
        primary: true,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Material(
            color: Colors.brown[900],
            borderRadius: BorderRadius.circular(10 * animation.value),
            elevation: 10,
            child: MaterialButton(
              //minWidth: 200,
              //height: 60,
              child: Text(" Cars",
                  style: new TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.0 * animation.value,
                    color: Colors.white,
                  )),
              onPressed: () {
                //carapi();
                Navigator.pushNamed(context, "CarApi");
              },
            ),
          ),
          Material(
            color: Colors.brown[900],
            borderRadius: BorderRadius.circular(10 * animation.value),
            elevation: 10,
            child: MaterialButton(
              //minWidth: 200,
              //height: 60,
              child: Text(" Guns",
                  style: new TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.0 * animation.value,
                    color: Colors.white,
                  )),
              onPressed: () {
                //carapi();
                Navigator.pushNamed(context, "GunApi");
              },
            ),
          ),
          Material(
            color: Colors.brown[900],
            borderRadius: BorderRadius.circular(10 * animation.value),
            elevation: 10,
            child: MaterialButton(
              //minWidth: 200,
              //height: 60,
              child: Text(" Bikes",
                  style: new TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.0 * animation.value,
                    color: Colors.white,
                  )),
              onPressed: () {
                //carapi();
                Navigator.pushNamed(context, "BikeApi");
              },
            ),
          ),
          Material(
            color: Colors.brown[900],
            borderRadius: BorderRadius.circular(10 * animation.value),
            elevation: 10,
            child: MaterialButton(
              //minWidth: 200,
              //height: 60,
              child: Text("Phone",
                  style: new TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.0 * animation.value,
                    color: Colors.white,
                  )),
              onPressed: () {
                //carapi();
                Navigator.pushNamed(context, "PhoneApi");
              },
            ),
          ),
          Material(
            color: Colors.brown[900],
            borderRadius: BorderRadius.circular(10 * animation.value),
            elevation: 10,
            child: MaterialButton(
              //minWidth: 200,
              //height: 60,
              child: Text("Watches",
                  style: new TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.0 * animation.value,
                    color: Colors.white,
                  )),
              onPressed: () {
                //carapi();
                Navigator.pushNamed(context, "WatchApi");
              },
            ),
          ),
          Material(
            color: Colors.brown[900],
            borderRadius: BorderRadius.circular(10 * animation.value),
            elevation: 10,
            child: MaterialButton(
              //minWidth: 200,
              //height: 60,
              child: Text("Aeroplanes",
                  style: new TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.0 * animation.value,
                    color: Colors.white,
                  )),
              onPressed: () {
                //carapi();
                Navigator.pushNamed(context, "AeroplanesApi");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CarApi extends StatefulWidget {
  @override
  _CarApiState createState() => _CarApiState();
}

class _CarApiState extends State<CarApi> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  var caranimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    caranimation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut)
          ..addListener(() {
            setState(() {
              print(caranimation.value);
            });
          });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Cars ',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown[900],
      ),
      body: GridView.count(
          primary: true,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            Image.asset(
              'images/car1.jpg',
              scale: 1 * caranimation.value,
            ),
            Image.asset(
              'images/car2.jpg',
              scale: 1 * caranimation.value,
            ),
            Image.asset(
              'images/car3.jpg',
              scale: 1 * caranimation.value,
            ),
            Image.asset(
              'images/car4.jpg',
              scale: 1 * caranimation.value,
            ),
            Image.asset(
              'images/car5.jpg',
              scale: 1 * caranimation.value,
            ),
          ]),
    );
  }
}

class GunApi extends StatefulWidget {
  @override
  _GunApiState createState() => _GunApiState();
}

class _GunApiState extends State<GunApi> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  var gunanimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    gunanimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut)
          ..addListener(() {
            setState(() {
              print(gunanimation.value);
            });
          });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Guns ',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown[900],
      ),
      body: GridView.count(
          primary: true,
          padding: const EdgeInsets.all(0),
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 2,
          children: <Widget>[
            Image.asset(
              'images/gun1.jpg',
              scale: 2 * gunanimation.value,
            ),
            Image.asset('images/gun2.jpg', scale: 1 * gunanimation.value),
            Image.asset('images/gun3.jpg', scale: 1 * gunanimation.value),
            Image.asset('images/gun4.jpg', scale: 1 * gunanimation.value),
            Image.asset('images/gun5.jpg', scale: 1 * gunanimation.value),
          ]),
    );
  }
}

class PhoneApi extends StatefulWidget {
  @override
  _PhoneApiState createState() => _PhoneApiState();
}

class _PhoneApiState extends State<PhoneApi>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  var phoneanimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    phoneanimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut)
          ..addListener(() {
            setState(() {
              print(phoneanimation.value);
            });
          });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Phones ',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown[900],
      ),
      body: GridView.count(
          primary: true,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            Image.asset('images/phone1.jpg', scale: 1 * phoneanimation.value),
            Image.asset('images/phone2.jpg', scale: 1 * phoneanimation.value),
            Image.asset('images/phone3.jpg', scale: 1 * phoneanimation.value),
            Image.asset('images/phone4.jpg', scale: 1 * phoneanimation.value),
          ]),
    );
  }
}

class BikeApi extends StatefulWidget {
  @override
  _BikeApiState createState() => _BikeApiState();
}

class _BikeApiState extends State<BikeApi> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  var bikeanimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    bikeanimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut)
          ..addListener(() {
            setState(() {
              print(bikeanimation.value);
            });
          });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Bikes ',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown[900],
      ),
      body: GridView.count(
          primary: true,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            Image.asset('images/bike1.jpg', scale: 1 * bikeanimation.value),
            Image.asset('images/bike2.jpg', scale: 1 * bikeanimation.value),
            Image.asset('images/bike3.jpg', scale: 1 * bikeanimation.value),
            Image.asset('images/bike4.jpg', scale: 1 * bikeanimation.value),
            Image.asset('images/bike5.jpg', scale: 1 * bikeanimation.value),
          ]),
    );
  }
}

class WatchApi extends StatefulWidget {
  @override
  _WatchApiState createState() => _WatchApiState();
}

class _WatchApiState extends State<WatchApi>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  var watchanimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    watchanimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut)
          ..addListener(() {
            setState(() {
              print(watchanimation.value);
            });
          });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Watches ',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown[900],
      ),
      body: GridView.count(
          primary: true,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            Image.asset('images/watch1.jpg', scale: 1 * watchanimation.value),
            Image.asset('images/watch2.jpg', scale: 1 * watchanimation.value),
            Image.asset('images/watch3.jpg', scale: 1 * watchanimation.value),
          ]),
    );
  }
}
