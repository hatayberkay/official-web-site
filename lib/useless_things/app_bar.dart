import 'package:flutter/material.dart';


import 'Constants.dart';


class app_bar extends StatefulWidget {
  const app_bar({Key? key}) : super(key: key);

  @override
  _app_barState createState() => _app_barState();
}

class _app_barState extends State<app_bar> {

  List<String> _buttonNames = ["Ana Sayfa", "Hakkımızda", "Hizmetlerimiz", "Referanslarımız", "İletişim"];
  int _currentSelectedButton = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
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

    );
  }
}
