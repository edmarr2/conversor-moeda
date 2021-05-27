import 'package:conversor_app/app/controllers/home_controller.dart';
import 'package:conversor_app/app/views/components/current_box.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  HomeController homeController;
  _MyHomePageState () {
    homeController = HomeController(toText: toText, fromText: fromText);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
            child: Column(
              children: [
              Image.asset('assets/images/logo.png', width: 150, height: 200,),
              CurrencyBox(value: 'Real', items: HomeController.currencies, onChanged: (model){},),
              CurrencyBox(value: 'Dolar'),
              SizedBox(height: 25,),
              ElevatedButton(
                child: Text(
                  'CONVERTER',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber, // background
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),// foreground
                ),
                onPressed: () { },
              ),
            ],
        ),
          ),
    )
    );
  }
}