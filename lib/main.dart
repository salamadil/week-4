import 'package:flutter/material.dart';

void main() {
  runApp(home2());
}

class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

String firstimage1 =
    "https://thumbs.dreamstime.com/b/kurdistan-flag-textile-cloth-fabric-waving-top-sunrise-mist-fog-kurdistan-flag-textile-cloth-fabric-waving-top-127910336.jpg";
String firstimage2 =
    "https://thumbs.dreamstime.com/b/kurdistan-flag-closeup-view-d-rendering-kurdistan-flag-closeup-view-126275291.jpg";
String mian1 = "";

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My Application ",
            style: TextStyle(letterSpacing: 45),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Text("disply chooes your image slect ."),
                  Image.network(mian1),
                ],
              ),
            ),
            Container(
              height: 12,
              color: Colors.amberAccent,
              child: Row(
                children: [
                  new SizedBox(
                    height: 100,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        if (firstimage1 != null) {
                          setState(() {
                            mian1 = firstimage1;
                          });
                        }
                      },
                      child: Image.network(
                        firstimage1,
                        height: 350,
                        width: 333,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (firstimage2 != null) {
                          setState(() {
                            mian1 = firstimage2;
                          });
                        }
                      },
                      child: Image.network(
                        firstimage2,
                        height: 200,
                        width: 200,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
