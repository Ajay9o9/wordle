import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/provider/main_provider.dart';
import 'package:wordle/word_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final firstTextEditingController = TextEditingController();
  final secondTextEditingController = TextEditingController();
  final thirdTextEditingController = TextEditingController();
  final fourthTextEditingController = TextEditingController();
  final fifthTextEditingController = TextEditingController();

  List<TextEditingController> textECList = [];

  @override
  void initState() {
    super.initState();
    textECList = [
      firstTextEditingController,
      secondTextEditingController,
      thirdTextEditingController,
      fourthTextEditingController,
      fifthTextEditingController
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Consumer<MainProvider>(builder: (context, mainProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Wordle"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(
              children: [
                WordRow(
                  mainProvider: mainProvider,
                  textECList: textECList,
                ),
                SizedBox(
                  height: 16,
                ),
                // WordRow(
                //   textECList: textECList,
                // ),
                // SizedBox(
                //   height: 16,
                // ),
                // WordRow(
                //   textECList: textECList,
                // ),
                // SizedBox(
                //   height: 16,
                // ),
                // WordRow(
                //   textECList: textECList,
                // ),
                SizedBox(
                  height: 50,
                ),
                ButtonTheme(
                  minWidth: 200.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // getTextInRow();
                      mainProvider.checkAnswer = true;
                    },
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
    });
  }
}
