import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_bio/page/home.dart';
import 'package:my_bio/resume.dart';
import 'package:my_bio/theam/app_theam.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalyan Cheerla',
      theme: AppThemeData.themeData,
      /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),*/
      home:HomePage(), /*const MyHomePage(),*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ""),
            SizedBox(height: 5),
            card(
              "Technology:",
              "",
              Image.network(
                "https://static-00.iconduck.com/assets.00/flutter-plain-icon-827x1024-okfp25wt.png",
                width: 50,
                height: 50,
              ),
              Image.network(
                "https://cdn1.iconfinder.com/data/icons/programing-development-8/24/react_logo-512.png",
                width: 50,
                height: 50,
              ),

            ), SizedBox(height: 5),
            card(
              "Projects:",
              "",
              Image.network(
                "https://pbs.twimg.com/profile_images/1066569829576929280/9BZ_f4_M_400x400.jpg",
                width: 50,
                height: 50,
              ),
              Image.network(
                "https://cdn1.iconfinder.com/data/icons/programing-development-8/24/react_logo-512.png",
                width: 50,
                height: 50,
              ),

            ),card(
              "Tools:",
              "",
              Image.network(
                "https://pbs.twimg.com/profile_images/1066569829576929280/9BZ_f4_M_400x400.jpg",
                width: 50,
                height: 50,
              ),
              Image.network(
                "https://cdn1.iconfinder.com/data/icons/programing-development-8/24/react_logo-512.png",
                width: 50,
                height: 50,
              ),

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
           /* Text(
              "WelCome",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 10),*/
            Container(
              width: 250,
              height: 50,
              child: GridTileBar(
                leading: Icon(Icons.email, color: Colors.black),
                title: Text("kalyansagar9440@gmail.com",
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 50,
                        width: 250,
                        child: GridTileBar(
                          title: Text("Kalyan Sagar Cheerla",style: TextStyle(fontSize: 22,color: Colors.black)),
                          subtitle: Text("Software Engineer",style: TextStyle(fontSize: 16,color: Colors.black)),
                        )),
                    Padding(
                      padding:  EdgeInsets.all(5.0),
                      child: TextButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MYRESUME()),
                        );
                      }, child: Text("View My Resume")),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "web/icons/Icon-192.png",
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget card(
      [String? lable,
      String? content,
      Widget? widget,
      Widget? widget1,
      Widget? widget2,
      Widget? widget3]) {
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
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: widget1,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: widget2,
                  ),
                  ClipRRect(
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
