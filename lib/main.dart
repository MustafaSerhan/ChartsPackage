import 'package:charts_package/Models/Colors.dart';
import 'package:charts_package/View/ColorList.dart';
import 'package:flutter/material.dart';

import 'View/PieCharts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Charts Library',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pastelDarkTheme,
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          labelColor: pastelTurquoisBblue,
          indicatorColor: pastelTurquoisBblue,
          unselectedLabelColor: pastelBackground,
          tabs: [
            new Tab(icon: new Icon(Icons.pie_chart)),
            new Tab(icon: new Icon(Icons.insert_chart)),
            new Tab(icon: new Icon(Icons.multiline_chart)),
            new Tab(icon: new Icon(Icons.color_lens)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PieCharts(),
          new Text("This is chat Tab View"),
          new Text("This is chat Tab View"),
         ColorList(),
        ],
      ),
    );
  }
}
