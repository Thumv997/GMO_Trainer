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
        primarySwatch: Colors.blue,
        fontFamily: 'RobotoCondensed',
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
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
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(10, 25, 10, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Registration',
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.05),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'MQL',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
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
                      ),
                      Text(
                        "Join Traders Community",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "www.mql5.com",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(10.0),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Column(
                          children: [
                            TextField(
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                prefixText: 'UserName',
                                hintText: "User Name",
                                border: UnderlineInputBorder(),
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                hintText: "\Password",
                                prefixText: 'Password',
                                border: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //...
                      Text("The password for your new MQL5"),
                      Text('acount will be sent to the special email'),
                      Text('adress'),

                      SizedBox(
                        height: size.height * 0.03,
                      ),

                      // Button
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
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
                                    image:
                                        AssetImage('assets/images/icon_fb.png'),
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
