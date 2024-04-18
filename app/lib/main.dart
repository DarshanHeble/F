import 'package:app/screens/main_screen.dart';
import 'package:flutter/material.dart';
// import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF15131C),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const MainScreen(),
    );
  }
}



































// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       //   title: Text(widget.title),
//       // ),
//       body: Stack(
//         children: [
//           Center(
//             child: Text("helllo"),
//           ),
//           sidebar(),
//         ],
//       ),
//       // body: Row(
//       //   children: [
//       //     SidebarX(
//       //       controller: SidebarXController(selectedIndex: 0),
//       //       items: [
//       //         SidebarXItem(
//       //           icon: Icons.notifications,
//       //           label: 'home',
//       //           onTap: () {
//       //             debugPrint("hello");
//       //           },
//       //         ),
//       //         SidebarXItem(icon: Icons.volume_up, label: 'Announcement'),
//       //         SidebarXItem(icon: Icons.settings, label: 'setting'),
//       //       ],
//       //     )
//       //   ],
//       // ),
//       // body: Center(
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       const Text(
//       //         'You have pushed the button this many times:',
//       //       ),
//       //       Text(
//       //         '$_counter',
//       //         style: Theme.of(context).textTheme.headlineMedium,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class sidebar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Visibility(
//       visible: true,
//       child: Column(
//         children: [
//           ElevatedButton(
//               onPressed: () {},
//               child: Icon(Icons.home),
//               style: ElevatedButton.styleFrom())
//         ],
//       ),
//     );
//   }
// }
