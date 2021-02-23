import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15.0),
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            //App Bar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Cancel',
                    style: TextStyle(fontSize: 16),
                  ),
                  Expanded(
                    child: Text(
                      'Registration',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),

            // Title
            Container(
              alignment: Alignment.bottomCenter,
              height: size.height * 0.2,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'MQL',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            )),
                        TextSpan(
                            text: '5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 30,
                                color: Colors.amber)),
                      ],
                    ),
                  ),
                  Text(
                    "Join Traders Community",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "www.mql5.com",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),

            // TextField
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(bottom: 15),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "User Name",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),

            Text("The password for your new MQL5"),
            Text('acount will be sent to the special email'),
            Text('adress'),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text('or'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/icon_fb.png'),
                            height: 24,
                            width: 24,
                          ),
                          Text(
                            "Continue with Facebook",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, color: Colors.blueAccent),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
