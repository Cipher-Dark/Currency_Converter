import 'package:flutter/material.dart';

class CurrencyConvertor extends StatefulWidget {
  const CurrencyConvertor({super.key});
  @override
  State<CurrencyConvertor> createState() {
    return _CurrencyConvertorState();
  }
}

class _CurrencyConvertorState extends State<CurrencyConvertor> {
  double result = 0;
//   @override
//    Widget build(BuildContext context) {
//     return const Scaffold(

//     );
//    }
// }
// class CurrencyConvertorPage extends StatelessWidget {
//   const CurrencyConvertorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    void convert() {
      setState(() {
        result = double.parse(textEditingController.text) * 81;
      });
    }

    const border = OutlineInputBorder(
        borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 2.0,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignCenter),
        borderRadius: BorderRadius.all(Radius.circular(6)));
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 206, 196),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          "Currency Convertor",
          style: TextStyle(color: Color.fromARGB(255, 245, 244, 244)),
        ),
        actions: const [
          Text("Hello",
              style: TextStyle(color: Color.fromARGB(255, 245, 244, 244))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),

                //decorating the input box

                decoration: const InputDecoration(
                  // label: Text(
                  //   "Please enter in INR ",
                  //   style: TextStyle(color: Colors.amber),
                  // ),
                  // labelText: "Please enter in INR ...",
                  hintText: "Amount in USD",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.white,
                  filled: true,
                  fillColor: Color.fromARGB(255, 55, 55, 55),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,

                  // signed: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  convert();
                },
                // style: ButtonStyle(
                //   elevation: const MaterialStatePropertyAll(20),
                //   backgroundColor: const MaterialStatePropertyAll(Colors.white),
                //   foregroundColor: const MaterialStatePropertyAll(Colors.black),
                //   minimumSize:
                //       const MaterialStatePropertyAll(Size(double.infinity, 40)),
                //   shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(5))),
                // ),

                //Short method for giving the properties to Textbutton or ...

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
