import 'package:exp_fist/navigation/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatefulWidget {
  final String? firstName, lastName, surName, message;

  const FirstPage({
    super.key,
    this.firstName,
    this.lastName,
    this.surName,
    this.message,
  });

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Sending From One Screen To Aother'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(
                        () => const SecondPage(
                          fName: 'My First Name',
                          lName: 'My Lname',
                          mesage: 'This is message',
                          sName: 'Second Name',
                        ),
                        arguments: {
                          'keyArguments': 'valueArgumets',
                          'keyArguments1': 'valueArguments1',
                        },
                      );
                    },
                    child: const Text('Pass Data To Second Screen'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
