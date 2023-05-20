import 'package:flutter/material.dart';

const age = 27;
const twiceAge = age * 2;
// String fullName(String firstName, String secondName) {
//   return "$firstName $secondName";
// }

// void test(List<String?>? names) {
//   final length = names?.length ?? 0;
//   names?.add("Sachin");
//   // print(names);
// }
// void test() {
//   final snow = Cat();
//   snow.breathe();
// }

// class LivingThing {
//   void breathe() {
//     print("Living thing is breathing");
//   }
// }

// class Cat extends LivingThing {}

// class Customer {
//   String name;
//   int age;
//   String location;
//   Customer(this.name, this.age, this.location);
// }
// class Cat {
//   final String name;
//   Cat(this.name);
//   @override
//   bool operator ==(covariant Cat other) => other.name == name;

//   @override
//   int get hashCode => name.hashCode;
// }

//
/*Extension in dart */
// class Cat {
//   final String name;
//   Cat(this.name);
// }

// extension Run on Cat {
//   void run() {
//     print('Cat $name is running');
//   }
// }

// void test() {
//   var cat = Cat("Fluffer");
//   cat.run();
// }
////////////////////////////////////////////////////////////
/*Future in dart 
Data to be returned in the future, 
as its name suggests
syntax:
future<return_type> fun_name(parameter)
{

}
*/

// Future<int> heavyMultipliesByTwo(int a) {
//   return Future.delayed(Duration(seconds: 3), () {
//     return a * 10;
//   });
// }

// /*Making function async helps it to call other async functions*/
// void test() async {
//   /*await waits for result to be calculated*/
//   final result = await heavyMultipliesByTwo(10);
//   print(result);
// }
/////////////////////////////////////////////////////////////////////////
/*Streams 
It is a pipe of data that completes or never completers or errors out and dies
*/
Stream<String> getName() {
  return Stream.periodic(Duration(seconds: 3), (value) => "Foo");
}

void test() async {
  await for (final value in getName()) {
    print(value);
  }
  print("Finished stream in dart");
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // test([null]);
    test();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
