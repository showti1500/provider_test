import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<CounterModel>(
        builder:(_)=> CounterModel(),
        child: CounterView(),
      ),

    );
  }
}

class CounterView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Test'),
      ),
      body:Center(
        child: Text(
          "${counterModel.getCounter()}",
          style: TextStyle(
            fontSize: 22.0
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: ()=>counterModel.increaseCounter(),
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: ()=>counterModel.decreaseCounter(),
          )
        ],
      ),
      
    );
  }
}

