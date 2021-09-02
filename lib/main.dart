import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = "nothing clicked";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {
          setState(
            () {
              text = 'FAB Clicked';
            },
          );
        },
        icon: Icon(Icons.save),
        label: Text('Save'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white,
                elevation: 30,
              ),
              onPressed: () {
                setState(() {
                  text = 'Elevated Button Clicked';
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.save,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Save',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                primary: Colors.white,
                elevation: 40,
              ),
              onPressed: () {
                setState(
                  () {
                    text = 'Textbutton Clicked';
                  },
                );
              },
              child: Text('Textbutton'),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'NO',
                  ),
                  onPressed: () {
                    setState(() {
                      text = 'ButtonBar Clicked';
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        text = 'Elavated Button In ButtonBar clicked';
                      },
                    );
                  },
                  child: Text('YES'),
                ),
              ],
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.purple,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.deepOrange,
              child: Text(
                'Enter',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  text = 'Material Button Clicked';
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
