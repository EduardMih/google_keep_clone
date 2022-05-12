import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget getBody()
  {

    return Center(child: const Text("Main Content"));

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("App bar")),
        body: getBody(),
        floatingActionButton: FloatingActionButton(
          child: IconButton(onPressed: () => {}, 
                            icon: const Icon(Icons.note_add)),
          onPressed: () => {},
          backgroundColor: Colors.blue,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.redAccent,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.menu, color: Colors.white)),
            Padding(
              padding: EdgeInsets.only(right: 90),
              child: IconButton(
                onPressed: () => {}, 
                icon: const Icon(Icons.abc, color: Colors.white))
              )
          ]),
        ),
        ),
        );

  }
}