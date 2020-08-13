import 'package:charts_package/Models/Colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Charts Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Charts List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pastelDarkTheme,
        title: Text(widget.title),
      ),
      body: Container(
        color: pastelBackground,
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: [
              Container(
                color: pastelBlue,
              ),
              Container(
                color: pastelDarkTheme,
              ),
              Container(
                color: pastelTurquoisBblue,
              ),
              Container(
                color: pastelRed,
              ),
              ////////////////
              Container(
                color: pastelBlue.withOpacity(.4),
              ),
              Container(
                color: pastelDarkTheme.withOpacity(.4),
              ),
              Container(
                color: pastelTurquoisBblue.withOpacity(.4),
              ),
              Container(
                color: pastelRed.withOpacity(.4),
              ),
              ////////////////
              Container(
                decoration: BoxDecoration(
                  color: pastelDarkTheme,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [.5, .9],
                    colors: [pastelBlue, pastelBlue.withOpacity(.3)],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: pastelDarkTheme,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [.5, 1],
                      colors: [pastelDarkTheme, pastelDarkTheme.withOpacity(.3)],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: pastelDarkTheme,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [.5, .9],
                    colors: [pastelTurquoisBblue, pastelTurquoisBblue.withOpacity(.3)],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: pastelDarkTheme,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [.5, .9],
                    colors: [pastelRed, pastelRed.withOpacity(.3)],
                  ),
                ),
              ),
              ////////////////
            ],
          ),
        ),
      ),
    );
  }
}
