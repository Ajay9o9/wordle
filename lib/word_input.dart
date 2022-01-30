import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WordRow extends StatefulWidget {
  const WordRow({Key? key}) : super(key: key);

  @override
  _WordRowState createState() => _WordRowState();
}

class _WordRowState extends State<WordRow> {
  FocusNode textFirstFocusNode = FocusNode();
  FocusNode textSecondFocusNode = FocusNode();
  FocusNode textThirdFocusNode = FocusNode();
  FocusNode textFourthFocusNode = FocusNode();
  FocusNode textFifthFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 80,
          child: TextFormField(
            enableInteractiveSelection: false,
            focusNode: textFirstFocusNode,
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
  }
}
