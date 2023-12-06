import 'package:flutter/material.dart';
import 'package:learningpart/android/CurrencyAppBar.dart';
import 'package:learningpart/android/HomePageText.dart';

// create a variable to store the value enter by the client in the input field
// conver the value into indian rupeee
// display the value

class CurencyConvertor extends StatefulWidget {
  const CurencyConvertor({super.key});
  @override
  State<StatefulWidget> createState() {
    return _CurrencyConvertorState();
  }
}

class _CurrencyConvertorState extends State<StatefulWidget> {
  final TextEditingController textEditingController = TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      // borderRadius: BorderRadius.all(Radius.circular(20),
    );

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: CurrencyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomePageText(result),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                // now we can track the value enter in the input field
                controller: textEditingController,
                // textField decoration
                decoration: const InputDecoration(
                  // providing hint for the user to enter the amount
                  hintText: "Please enter the amount in USD",
                  // hint style
                  hintStyle: TextStyle(
                      color: Color.fromARGB(157, 0, 0, 0), fontSize: 14),
                  // adding dollor symbol as prefix
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Color.fromARGB(178, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                // style for text in the text field
                style: const TextStyle(
                  color: Color.fromARGB(137, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                // aligning the enter value in the center of the field
                textAlign: TextAlign.center,

                // adding rules for text field user can only enter number with decimal
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = (double.parse(
                                textEditingController.text.compareTo("") == 0
                                    ? "0"
                                    : textEditingController.text) *
                            83.33)
                        .toStringAsFixed(2);
                  });
                },

                // style for the button
                style: const ButtonStyle(
                  // font size in the button
                  // textStyle: MaterialStatePropertyAll(
                  //   // TextStyle(fontSize: 14),
                  // ),
                  // text color in the button

                  foregroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),

                  // black background
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.black,
                  ),

                  // minimamSize of the button
                  minimumSize: MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),

                  elevation: MaterialStatePropertyAll(20),

                  // changing the shap of the button
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  ),
                ),

                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("convert "),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class CurencyConvertor extends StatelessWidget {
//   const CurencyConvertor({super.key});
//  // }
