import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  PageController pageController = PageController();
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  String calculation() {
    String value = (Random().nextDouble() * 100).toString();
    return value;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: PageView(
        controller:pageController,
        children: [
          Center(
            child: SizedBox(
                // Center is a layout widget. It takes a single child and positions it
                width: width,
                height: width,
                child: width > 500
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemCount: 100,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            alignment: Alignment.center,
                            child:  HtmlWidget("<p class="
                                """style=""text-align: center;""><span style=""font-family: OpenSans-Semibold; font-size: 24px; letter-spacing: 1px; line-height: 27px;""><span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">WITH</span> <span class=""colorWrapper""style=""color: rgb(189, 0, 0);"">COFFEE WORLD</span> <span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">p0 QUALITY SERVICE IS IN TOP ${_counter * index}, </span></span></p>"""),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                          );
                        })
                    : ListView.builder(
                        itemCount: 1000,
                        itemBuilder: (BuildContext context, int count) {
                          return HtmlWidget("<p class="
                              """style=""text-align: center;""><span style=""font-family: OpenSans-Semibold; font-size: 24px; letter-spacing: 1px; line-height: 27px;""><span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">WITH</span> <span class=""colorWrapper""style=""color: rgb(189, 0, 0);"">COFFEE WORLD</span> <span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">p0 QUALITY SERVICE IS IN TOP ${_counter * count}, </span></span></p>""");
                        })),
          ),
          SizedBox(
            // Center is a layout widget. It takes a single child and positions it
              width: width,
              height: width,
              child: width > 500
                  ? GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 100,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      child:  HtmlWidget("<p class="
                          """style=""text-align: center;""><span style=""font-family: OpenSans-Semibold; font-size: 24px; letter-spacing: 1px; line-height: 27px;""><span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">WITH</span> <span class=""colorWrapper""style=""color: rgb(189, 0, 0);"">COFFEE WORLD</span> <span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">p1 QUALITY SERVICE IS IN TOP ${_counter * index}, </span></span></p>"""),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  })
                  : ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (BuildContext context, int count) {
                    return HtmlWidget("<p class="
                        """style=""text-align: center;""><span style=""font-family: OpenSans-Semibold; font-size: 24px; letter-spacing: 1px; line-height: 27px;""><span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">WITH</span> <span class=""colorWrapper""style=""color: rgb(189, 0, 0);"">COFFEE WORLD</span> <span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">p1 QUALITY SERVICE IS IN TOP ${_counter * count} , </span></span></p>""");
                  })),
          SizedBox(
            // Center is a layout widget. It takes a single child and positions it
              width: width,
              height: width,
              child: width > 500
                  ? GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 100,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      child:  HtmlWidget("<p class="
                          """style=""text-align: center;""><span style=""font-family: OpenSans-Semibold; font-size: 24px; letter-spacing: 1px; line-height: 27px;""><span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">WITH</span> <span class=""colorWrapper""style=""color: rgb(189, 0, 0);"">COFFEE WORLD</span> <span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">p2 QUALITY SERVICE IS IN TOP ${_counter * index} , </span></span></p>"""),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  })
                  : ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (BuildContext context, int count) {
                    return HtmlWidget("<p class="
                        """style=""text-align: center;""><span style=""font-family: OpenSans-Semibold; font-size: 24px; letter-spacing: 1px; line-height: 27px;""><span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">WITH</span> <span class=""colorWrapper""style=""color: rgb(189, 0, 0);"">COFFEE WORLD</span> <span class=""colorWrapper""style=""color: rgb(0, 0, 0);"">p2 QUALITY SERVICE IS IN TOP ${_counter * count} p2,  </span></span></p>""");
                  })),
        ],
      ),
      floatingActionButton: Row(
        children: [
          ElevatedButton(onPressed: (){
            if (pageController.hasClients) {
              pageController.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }

          }, child: Text('<<<')),
          ElevatedButton(onPressed: (){
            if (pageController.hasClients) {
              pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }
          }, child: Text('>>>')),
          FloatingActionButton(
            onPressed: () {
              Timer.periodic(new Duration(seconds: 1), (timer) {
                _counter = (Random().nextDouble() * 100).toInt();
                setState(() {});
              });
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
