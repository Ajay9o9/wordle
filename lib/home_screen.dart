import 'package:flutter/material.dart';
import 'package:wordle/word_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Wordle"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              WordRow(),
              SizedBox(
                height: 16,
              ),
              WordRow(),
              SizedBox(
                height: 16,
              ),
              WordRow(),
              SizedBox(
                height: 16,
              ),
              WordRow(),
              SizedBox(
                height: 50,
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enter",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
