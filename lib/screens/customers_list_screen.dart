import 'package:flutter/material.dart';

import '../constants.dart';

class CustomersListScreen extends StatelessWidget {
  const CustomersListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Customers List',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      enabled: true,
                      cursorColor: Colors.grey,
                      decoration: kCustomersTextFieldDecoration,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'No customer yet',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  )
                ],
              ),
            ),
          ],

        ),

    );
  }
}
