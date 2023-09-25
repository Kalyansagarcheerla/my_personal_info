import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCkq3PwRPM8gjDYEoD_JfR06GhS0wwYLl8",
        authDomain: "mybio-4abc4.firebaseapp.com",
        projectId: "mybio-4abc4",
        storageBucket: "mybio-4abc4.appspot.com",
        messagingSenderId: "1028909515588",
        appId: "1:1028909515588:web:00b62f9f42d01523aecd11",
        measurementId: "G-WYM2QB4QEY"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // final Future<FirebaseApp> _initial = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kalyan_bio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
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
      /* appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),*/
      body: Padding(
        padding: EdgeInsets.only(left: 150.0, right: 150.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.0)),
              child: header(),
            ),
            SizedBox(height: 10),
            card("Bio:",
                "krhfiyergurueufruyegyfueygfrgergfherfyhberyhbgfyegrygfbeygbfyebgyubeygrfhe"),
            card(
              "Technology:", "", Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQU6uLBoXtohktGKTXZFaUGAZpXUYmR8f215bex1q7&s",
            width: 50,height: 50,  ),Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQU6uLBoXtohktGKTXZFaUGAZpXUYmR8f215bex1q7&s",
            width: 50,height: 50,  ),Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQU6uLBoXtohktGKTXZFaUGAZpXUYmR8f215bex1q7&s",
            width: 50,height: 50,  ),Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQU6uLBoXtohktGKTXZFaUGAZpXUYmR8f215bex1q7&s",
            width: 50,height: 50,  ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget header() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WelCome",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 10),
            Container(
              width: 250,
              height: 50,
              child: GridTileBar(
                leading: Icon(Icons.email, color: Colors.black),
                title: Text("kalyansagar9440@g.com",
                    style: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              width: 250,
              height: 50,
              child: GridTileBar(
                leading: Icon(Icons.phone, color: Colors.black),
                title:
                    Text("7993745611", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                    height: 50,
                    width: 200,
                    child: GridTileBar(
                      title: Text("Kalyan Sagar Cheerla"),
                      subtitle: Text("Software Engineer"),
                    )),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQU6uLBoXtohktGKTXZFaUGAZpXUYmR8f215bex1q7&s",
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget card([String? lable, String? content,Widget? widget, Widget? widget1, Widget? widget2, Widget? widget3]) {
    return Card(
      elevation: 10,
      child: Container(
        // height: 100,
        width: 1250,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$lable"),
              Text("$content"),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: widget,
                  ),ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: widget1,
                  ),ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: widget2,
                  ),ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: widget3,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
