import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'firstComponent.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter basics',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  String nom = "";
  List data =[{
    "link":"Le lien",
    "title":"Flutter framework - Build apps for any screen - Get StartedFlutter framework",
    "description":"Control every pixel to create customized & adaptive designs that look great " 
                   "on any screen. Take control of your codebase with plugins, testing, dev tools & build " 
                   "high quality apps. Multi-Platform. Mobile Ads SDK. Null Safe Code. Single Codebase.Web Stable. Hot Reload."
  },
  
  {
    "link":"Le lien",
    "title":"Flutter framework - Build apps for any screen - Get StartedFlutter framework",
    "description":"Control every pixel to create customized & adaptive designs that look great " 
                   "on any screen. Take control of your codebase with plugins, testing, dev tools & build " 
                   "high quality apps. Multi-Platform. Mobile Ads SDK. Null Safe Code. Single Codebase.Web Stable. Hot Reload."
  },

  {
    "link":"Le lien",
    "title":"Flutter framework - Build apps for any screen - Get StartedFlutter framework",
    "description":"Control every pixel to create customized & adaptive designs that look great " 
                   "on any screen. Take control of your codebase with plugins, testing, dev tools & build " 
                   "high quality apps. Multi-Platform. Mobile Ads SDK. Null Safe Code. Single Codebase.Web Stable. Hot Reload."
  }

  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Permet de rendre une zone quelconque cliquable
          Column(
            children: 
              data.map((e) => GoogleSearcComponent(
                link: e['link'],
                title: e['title'],
                description: e['description']))
              .toList()
          ),

          InkWell(
              hoverColor: Colors.greenAccent,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreenAccent),
                child: Text("Ouvrir une boite de dialogue",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              onTap: () {}),
        ],
      ),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
