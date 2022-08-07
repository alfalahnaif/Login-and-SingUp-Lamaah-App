import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.menu,),
//           title: Text('Lamaah',),
//           actions: [Icon(Icons.notifications_active)],
//         ),
//         // bottomNavigationBar: BottomNavigationBar(
//         //   selectedItemColor: Colors.black54,
//         // items: [
//         //   BottomNavigationBarItem(icon: Icon(Icons.apps)),
//         //   BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp)),
//         //   BottomNavigationBarItem(icon: Icon(Icons.search)),
//         //   BottomNavigationBarItem(icon: Icon(Icons.person)),
//         // ]
//         // ),
//       ),
//     );
//   }
// }