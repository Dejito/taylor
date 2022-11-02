import 'package:flutter/material.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text('My Responsibility')
            ),
          )
        ],
      ),
    );
  }
}
