import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Chat App"),
            bottom: TabBar(tabs: [
              Tab(
                child: Text("GridView"),
              ),
              Tab(
                child: Text("ListView"),
              )
            ]),
          ),
          body: TabBarView(
            children: [
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[100],
                    child: const Text("1"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[200],
                    child: const Text('2'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[300],
                    child: const Text('3'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[400],
                    child: const Text('4'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[500],
                    child: const Text('5'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[600],
                    child: const Text('6'),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: 8,
                itemBuilder: ((context, index) {
                  return ListTile(
                      leading: CircleAvatar(),
                      title: Text(
                        "List $index",
                      ),
                      trailing: Icon(Icons.arrow_back));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
