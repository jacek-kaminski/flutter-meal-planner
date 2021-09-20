import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:meal_planner/assets/strings.dart';
import 'package:meal_planner/utils/general_helper.dart';
import 'package:meal_planner/widgets/card_button.dart';
import 'package:meal_planner/widgets/menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weekDays = [
      'M',
      'T',
      'W',
      'T',
      'F',
      'S',
      'S',
    ];
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(title: const Text(Strings.applicationName), actions: [
      PopupMenuButton(
        icon: Icon(
          Icons.menu,
        ),
        itemBuilder: (_) => [
          PopupMenuItem(
            child: Text('Option 1'),
            value: 1,
          ),
          PopupMenuItem(
            child: Text('Option 2'),
            value: 2,
          ),
          PopupMenuItem(
            child: Text('Option 2'),
            value: 3,
          )
        ],
      ),
    ]);

    return Scaffold(
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              height: GeneralHelper.getProportionalContentHeight(
                  mediaQuery, appBar, 0.7),
              child: Menu()),
          Container(
              height: GeneralHelper.getProportionalContentHeight(
                  mediaQuery, appBar, 0.15),
              child: CardButton('Go to week plan')),
          Container(
              height: GeneralHelper.getProportionalContentHeight(
                  mediaQuery, appBar, 0.15),
              child: CardButton('Go to meals list')),
        ],
      ),
    );

    // return Scaffold(
    //     appBar: appBar,
    //     body: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [
    //         Container(
    //           height: GeneralHelper.getProportionalContentHeight(
    //               mediaQuery, appBar, 0.1),
    //           child: Padding(
    //             padding: EdgeInsets.all(10),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
    //               children: weekDays
    //                   .map((item) => Card(
    //                         elevation: 8,
    //                         shape: CircleBorder(),
    //                         child: CircleAvatar(
    //                           backgroundColor: weekDays.indexOf(item) ==
    //                                   DateTime.now().weekday - 1
    //                               ? Colors.orange
    //                               : Colors.blue,
    //                           radius: 15,
    //                           child: Padding(
    //                             padding: EdgeInsets.all(4),
    //                             child: Text(
    //                               item,
    //                               style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                           ),
    //                         ),
    //                       ))
    //                   .toList(),
    //             ),
    //           ),
    //         ),
    //         Container(
    //           height: GeneralHelper.getProportionalContentHeight(
    //               mediaQuery, appBar, 0.6),
    //           child: Column(
    //             children: [
    //               Container(
    //                   padding: EdgeInsets.all(10),
    //                   child: Text(
    //                     'Today\'s Menu',
    //                     style: TextStyle(
    //                       fontSize: 24,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   )),
    //               Expanded(
    //                 child: ListView.builder(
    //                   itemBuilder: (ctx, index) {
    //                     return Card(
    //                       elevation: 4,
    //                       margin:
    //                           EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    //                       child: ListTile(
    //                         leading: Padding(
    //                           padding: EdgeInsets.all(4),
    //                           child: Icon(
    //                             Icons.fastfood,
    //                             size: 32,
    //                           ),
    //                         ),
    //                         title:
    //                             Text('Sample description of delicious meal.'),
    //                         subtitle: Text('Breakfast'),
    //                       ),
    //                     );
    //                   },
    //                   itemCount: 4,
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         Container(
    //           height: GeneralHelper.getProportionalContentHeight(
    //               mediaQuery, appBar, 0.3),
    //           child: GridView(
    //             padding: const EdgeInsets.all(10),
    //             children: ['Option1', 'Option2', 'Option3', 'Option4']
    //                 .map((item) => InkWell(
    //                       borderRadius: BorderRadius.circular(15),
    //                       child: Container(
    //                           decoration: BoxDecoration(
    //                               color: Colors.yellow,
    //                               borderRadius: BorderRadius.circular(15)),
    //                           padding: EdgeInsets.all(15),
    //                           child: Text(item)),
    //                     ))
    //                 .toList(),
    //             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //               maxCrossAxisExtent: 200,
    //               mainAxisExtent: 80,
    //               childAspectRatio: 1,
    //               crossAxisSpacing: 10,
    //               mainAxisSpacing: 10,
    //             ),
    //           ),
    //         ),
    //       ],
    //     ));
  }
}
