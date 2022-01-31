import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:wordle/provider/main_provider.dart';

// class WordRow extends StatefulWidget {
//
//
//   @override
//   _WordRowState createState() => _WordRowState();
// }

class WordRow extends StatelessWidget {
  final List<TextEditingController> textECList;
  final MainProvider mainProvider;
  WordRow({Key? key, required this.textECList, required this.mainProvider})
      : super(key: key);

  FocusNode textFirstFocusNode = FocusNode();
  FocusNode textSecondFocusNode = FocusNode();
  FocusNode textThirdFocusNode = FocusNode();
  FocusNode textFourthFocusNode = FocusNode();
  FocusNode textFifthFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (context, mainProvider, child) {
      if (mainProvider.checkAnswer) {
        getTextInRow();
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 80,
            child: TextFormField(
              enableInteractiveSelection: false,
              focusNode: textFirstFocusNode,
              controller: textECList[0],
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              onChanged: (val) {
                FocusScope.of(context).requestFocus(textSecondFocusNode);
              },
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
              showCursor: false,
              textCapitalization: TextCapitalization.characters,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: TextFormField(
              enableInteractiveSelection: false,
              focusNode: textSecondFocusNode,
              controller: textECList[1],
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
              showCursor: false,
              textCapitalization: TextCapitalization.characters,
              onChanged: (val) {
                FocusScope.of(context).requestFocus(textThirdFocusNode);
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: TextFormField(
              enableInteractiveSelection: false,
              focusNode: textThirdFocusNode,
              controller: textECList[2],
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
              showCursor: false,
              textCapitalization: TextCapitalization.characters,
              onChanged: (val) {
                FocusScope.of(context).requestFocus(textFourthFocusNode);
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: TextFormField(
              enableInteractiveSelection: false,
              focusNode: textFourthFocusNode,
              controller: textECList[3],
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
              textCapitalization: TextCapitalization.characters,
              showCursor: false,
              onChanged: (val) {
                FocusScope.of(context).requestFocus(textFifthFocusNode);
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: TextFormField(
              enableInteractiveSelection: false,
              focusNode: textFifthFocusNode,
              controller: textECList[4],
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
              textCapitalization: TextCapitalization.characters,
              showCursor: false,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      );
    });
  }

  void getTextInRow() {
    List<String> enteredWordAsChar = [];
    textECList.forEach((element) {
      enteredWordAsChar.add(element.value.text.toUpperCase());
      print(element.value.text);
    });

    String word = "TRAIN";
    List<String> actual = word.split("");
    print(actual.toString());
    print(enteredWordAsChar.toString());

    Map isBothEqual = listEquals(actual, enteredWordAsChar);
    print(isBothEqual.toString());
  }
}

Map<String, dynamic> listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) {
    return {"bool": b == null, "index": -99};
  }
  if (b == null || a.length != b.length) {
    return {"bool": false, "index": -99};
  }
  if (identical(a, b)) {
    return {"bool": true, "index": -99};
  }
  for (int index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) {
      return {"bool": false, "index": index};
    }
  }
  return {"bool": true, "index": -99};
}
