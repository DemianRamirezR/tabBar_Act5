import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.verified_user)),
              Tab(icon: Icon(Icons.task)),
              Tab(icon: Icon(Icons.add_task)),
              Tab(icon: Icon(Icons.access_time)),
            ],
          ),
          title: const Text('Pestaña TabBar'),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.verified_user, size: 350),
            Icon(Icons.task, size: 350),
            Icon(Icons.add_task, size: 350),
            Icon(Icons.access_time, size: 350),
          ],
        ),
      ),
    );
  }
}
