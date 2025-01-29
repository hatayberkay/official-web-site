import 'package:flutter/material.dart';
import 'package:sonoflightsoftware/useless_things/Constants.dart';

import 'package:sonoflightsoftware/useless_things/ana_sayfa.dart';
import 'package:sonoflightsoftware/useless_things/app_bar.dart';

import 'package:sonoflightsoftware/old_version/mobil/mobil_ana_sayfa.dart';

import 'package:sonoflightsoftware/useless_things/responsive_layout.dart';
import 'dart:js' as js;


import 'package:firebase_core/firebase_core.dart';
import 'package:sonoflightsoftware/tablet/tablet_ana_sayfa.dart';
import 'firebase_options.dart';
import 'package:url_strategy/url_strategy.dart';
import 'my_site.dart';

// https://stackoverflow.com/questions/68339379/firebase-hosting-not-showing-up



Future<void>  main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MySite());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hatay Berkay ',
      theme: ThemeData(



        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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


  void _incrementCounter() async {

    setState(() {

      js.context.callMethod('open', [
        "https://api.whatsapp.com/send/?phone=905304500247&text&type=phone_number&app_absent=0"
      ]);
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      //  _counter++;


      //  final double start = 0;
      // final double start = 1350; 4050


      //  scrollController.animateTo(start, duration: Duration(seconds: 1), curve: Curves.easeIn);

    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ScrollController scrollController = ScrollController();
    ScrollController scrollController_mobil = ScrollController();

    List<String> _buttonNames = ["Ana Sayfammm",  "Referanslarımız",  "Hizmetlerimiz", "İletişim"];
    int _currentSelectedButton = 0;
    bool isOpen = false;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Constants.white,
      appBar:

      PreferredSize(
        preferredSize:  Size(double.maxFinite, 100 ),
        child: (ResponsiveLayout.isPhone(context) ||
            ResponsiveLayout.isPhone(context))
            ?   AppBar(
            title: Center(child: Padding(
              padding: const EdgeInsets.all(Constants.kPadding),
              child: Text("Hatay Berkay Işıkoğlu" ),
            )),

           /* actions: [IconButton(icon: Icon(Icons.place),onPressed: (){
              setState((){
                isOpen = !isOpen;
              });
            })],*/
            bottom: PreferredSize(child: isOpen? Container(color:Colors.red, height: 100):Container(),preferredSize:Size.fromHeight(isOpen? 100:0) ,)
        )
            :     Container(
          width: width,


          child: Column(
              children: [

                Container(
                  height: 100,

                  child:   Card(
                    color:  Constants.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                      // side: BorderSide(width: 5, color: Constants.white)

                    ),

                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [




                        Spacer(),

                        ...List.generate(
                          _buttonNames.length,
                              (index) => TextButton(

                            onPressed: () {
                              setState(() {
                                _currentSelectedButton = index;

                                if(index == 0)
                                  scrollController.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
                                if(index == 1)
                                  scrollController.animateTo(300, duration: Duration(seconds: 1), curve: Curves.easeIn);
                                 if(index == 2)
                                  scrollController.animateTo(900, duration: Duration(seconds: 1), curve: Curves.easeIn);
                                if(index == 3)
                                  _incrementCounter();

                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: Constants.kPadding ,right: Constants.kPadding, left: Constants.kPadding ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    _buttonNames[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,

                                      color: _currentSelectedButton == index
                                          ? Constants.purple
                                          : Constants.lightblack,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),






                      ],

                    ),
                  ),
                ),

              ]),

        ),
      ),
      body: ResponsiveLayout(
        computer: SingleChildScrollView(
          controller: scrollController,
          physics: ClampingScrollPhysics(),
          child: Container(
            color: Constants.white,
            child: Column(


              children: <Widget>[



              ana_sayfa(),




              ],
            ),
          ),
        ),
        largeTablet: SingleChildScrollView(
          controller: scrollController,
          physics: ClampingScrollPhysics(),
          child: Container(
            color: Constants.white,
            child: Column(


              children: <Widget>[



                tablet_ana_sayfa(),




              ],
            ),
          ),
        ),
        tablet: SingleChildScrollView(
          controller: scrollController,
          physics: ClampingScrollPhysics(),
          child: Container(
            color: Constants.white,
            child: Column(


              children: <Widget>[



                tablet_ana_sayfa()




              ],
            ),
          ),
        ),
        phone: SingleChildScrollView(
            controller: scrollController_mobil,
            physics: ClampingScrollPhysics(),
            child: Container(
              color: Constants.white,
              child: Column(
                  children: [

                    mobil_ana_sayfa(),

              ]),

            )),
        tiny: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Destek',
        child: Image.asset("images/whatsapp.png"),
        backgroundColor: Colors.transparent,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
