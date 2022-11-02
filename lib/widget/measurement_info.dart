import 'package:flutter/material.dart';

class MeasurementInfo extends StatelessWidget {
   MeasurementInfo({Key? key}) : super(key: key);

  List<String> tailorItems = ['bust', 'nipple', 'sleeve', 'hip', 'under-bust',
  'half-length', 'waist', 'shoulder', 'thigh', 'full-length'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 3/2,
            mainAxisSpacing: 8,crossAxisSpacing: 8
          ),
          itemCount: tailorItems.length,
          itemBuilder: (context, i) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Card(
                color: Colors.white,
                elevation: 5,
                margin: const EdgeInsets.all(10),
                borderOnForeground: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                // color: Colors.orange,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(tailorItems[i],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text('0'),
                      ),
                    ],
                  )),
            );
          }
      ),
    );
  }
}
