import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  final String? fName, sName, lName, mesage;
  const SecondPage({
    super.key,
    this.fName,
    this.sName,
    this.lName,
    this.mesage,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? myData, myNameKey, myValue, myKey1, myKey2;
  List<String?> setOfKeys = [];
  List<String?> setOfValues = [];
  initDataGet() {
    // myData = await Get.to(const FirstPage());
    final Map<String, dynamic> args = Get.arguments;
    myNameKey = args['keyArguments'];
    myValue = args['keyArguments1'];

    args.forEach((key, value) {
      setState(() {
        setOfKeys.add(key);
      });
    });

    args.forEach((key, value) {
      setState(() {
        setOfValues.add(value);
      });
    });
  }

  @override
  void initState() {
    initDataGet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(widget.fName!),
              Text(widget.sName!),
              Text(widget.lName!),
              Text(widget.mesage!),
              Text(myNameKey!),
              Text(myValue!),
              Text(setOfKeys[0]!),
              Text(setOfKeys[1]!),
              Text(setOfValues[0]!),
              Text(setOfValues[1]!),
            ],
          ),
        ),
      ),
    );
  }
}
