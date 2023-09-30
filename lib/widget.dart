import 'package:flutter/material.dart';

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

  void _decrementCounter() {
    setState(() {
      if(_counter > 0) {
      _counter--;
      }
  });
  }

  void _reloadCounter() {
    setState(() {
      _counter = 0;
    });
  }
  
// }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(widget.title, style: const TextStyle(
          color: Colors.white, 
          fontWeight: FontWeight.bold, 
          fontSize: 35.0,
        ),),
        elevation: 7.2,
      ),
      body: Center(

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador:',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            // SizedBox(
            //   height: 50,
            //   width: double.infinity,
            //   child: Container(
            //     color: Colors.red,
            //   ),
            // ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 60,
              ),
              
            ),
          ],
        ),
      ),
      floatingActionButton: 
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        const SizedBox(),
        FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.green[200],
        child: const Icon(Icons.add),
      ),
        FloatingActionButton(
          onPressed: _reloadCounter,
          tooltip: 'Reload',
          backgroundColor: Colors.blue[200],
          child: const Icon(Icons.refresh),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Remove',
          backgroundColor: Colors.red[200],
          child: const Icon(Icons.remove),
        ),
      ],)
      
      
    );
  }
}
