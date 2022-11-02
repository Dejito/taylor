import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 1,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12, top: 5),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Theme.of(context).primaryColor,
            child: const Text('DP',
            style: TextStyle(
              color: Colors.white
            ),
            ),
          ),
        ),
        title: const Center(
          child: Text('Put Logo',
          style: TextStyle(
            color: Colors.purple
          ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              Icons.notifications_none,
              size: 32,
              color: Theme.of(context).iconTheme.color,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:12.0, top: 30),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Good Morning ',
                    style: TextStyle(
                    color: Colors.grey
                ),
                ),
                Text(
                    '{username}',

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
