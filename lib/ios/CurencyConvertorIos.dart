import 'package:flutter/cupertino.dart';

import 'package:learningpart/ios/HomePageText.dart';

// create a variable to store the value enter by the client in the input field
// conver the value into indian rupeee
// display the value

class CurencyConvertorIos extends StatefulWidget {
  const CurencyConvertorIos({super.key});
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
    // const border = OutlineInputBorder(
    //   borderSide: BorderSide(color: Colors.white),
    //   // borderRadius: BorderRadius.all(Radius.circular(20),
    // );

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.activeGreen,
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          "currency convertor ",
          style: TextStyle(
            color: CupertinoColors.white,
          ),
        ),
        backgroundColor: CupertinoColors.activeGreen,
        border: Border.all(
          style: BorderStyle.none,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomePageText(result),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                prefix: const Icon(CupertinoIcons.money_dollar),
                padding: const EdgeInsets.all(12.0),

                // place holder in the input field
                placeholder: "Please enter the amount in USD",
                placeholderStyle:
                    const TextStyle(color: CupertinoColors.systemGrey4),
                controller: textEditingController,

                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(
                    color: CupertinoColors.white,
                  ),
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
              child: CupertinoButton(
                // borderRadius: BorderRadius.zero,
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
                color: CupertinoColors.black,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "convert ",
                  ),
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
