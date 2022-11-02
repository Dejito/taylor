import 'package:flutter/material.dart';
import 'package:taylor/widget/measurement_info.dart';
import 'package:taylor/widget/personal_data.dart';

class AddNewCustomer extends StatelessWidget {
  const AddNewCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            // title: const Text(
            //     'New Customer'
            // ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.account_circle),
                  text: 'PERSONAL DATA',
                ),
                Tab(
                  icon: Icon(Icons.message),
                  text: 'MEASUREMENTS',
                ),
              ],
            ),
          ),
          body:

          TabBarView(
            children: [
              const PersonalData(),
              MeasurementInfo(),

            ],
          ),
        )
    );
  }
}
