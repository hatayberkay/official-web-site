import 'package:flutter/material.dart';

import 'dart:js' as js;

import 'Constants.dart';

class ana_sayfa extends StatefulWidget {
  const ana_sayfa({Key? key}) : super(key: key);

  @override
  _ana_sayfaState createState() => _ana_sayfaState();
}




class _ana_sayfaState extends State<ana_sayfa> {

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

    return Container(
      width: width,
      color: Constants.second_white,

      child: Column(
        children: [
          // 1 kısım

          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [



              Container(
                width: 500,
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                  children:

                  [
                    SizedBox(height: 50,),
                    Text("MERHABA, BENİM ADIM" , style: TextStyle( fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Avenir',
                    color: Constants.purple
                    ),),
                    SizedBox(height: 15,),
                    Text("Hatay" ,style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Avenir',

                    ),),

                    SizedBox(height: 15,),
                    Text("Berkay" ,style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Avenir',

                    ),),
                    SizedBox(height: 25,),
                    Text("Ben bir Web sitesi ve Mobil uygulama geliştiricisiyim." ,style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Avenir',

                    ),),


                    SizedBox(height: 50,),

                    Container(
                      width: 250,
                      height: 50,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 5.0, color: Constants.purple),
                            backgroundColor: Constants.purple
                          ),

                          onPressed: () {
                        setState(() {


                        });

                      }, child: Text("Yaptığım İşler" , style: TextStyle(color: Constants.white , fontSize: 20 , fontWeight: FontWeight.bold),)),
                    ),

                    SizedBox(height: 50,),



                    Row(

                      children: [
                        SizedBox(
                          width: 25,
                        ),


                        CircleAvatar(
                          child: Image.asset("images/instagram.png", width: 15, height: 15,),
                          radius: 15.0,
                          backgroundColor: Constants.purple,

                        ),

                        SizedBox(
                          width: 25,
                        ),

                        CircleAvatar(
                          child: Image.asset("images/youtube.png", width: 15, height: 15,),
                          radius: 15.0,
                          backgroundColor: Constants.purple,

                        ),


                      ],

                    ),

                    SizedBox(height: 50,),
                  ],


                ),
              ),





              Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    color: Constants.purple
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset("images/herom.jpg", width: 250, height: 400,)),
                  )),









            ],


          ),





          // Hakkımızda

          Container(
            width: width,
            color: Constants.white,
            child: Column(

                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("Hakkımızda", style: Constants.baslik,),

                  SizedBox(
                    height: 25,
                  ),


                  Container(
                    width: 1100,
                    child: Text("Sonoflight, kullanıcılara dünya genelinde son teknoloji hizmet sağlamanın"
                        " ne demek olduğunu iyi bilir. Sonoflight olarak, karşılaşabileceğiniz her "
                        "soruna daha hızlı ve daha basit çözümler sunmayı kendimize görev edindik. "
                        "Özelleştirilmiş Yönetimden, Ücretsiz İndirme seçeneklerine kadar,"
                        " aklınıza gelebilecek her türlü hizmeti sizler için sunuyoruz. "
                        "Hayatınızı kolaylaştırmak için gereken her aracı sağlayacağımızdan emin olabilirsiniz.", style: Constants.alt_metin,),
                  ),

                  SizedBox(
                    height: 50,
                  ),


            ]),


          ),

          // 4 kısım Refenaslar
          Container(
            width: width,
            color: Constants.second_white,
            child: Column(

                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("Referanslarımız" , style: Constants.baslik,),

                  SizedBox(
                    height: 25,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Image.asset("images/emre.jpg", width: 150, height: 100,),


                      Image.asset("images/daikin.png", width: 150, height: 100,),

                    ],

                  ),


                  SizedBox(
                    height: 50,
                  ),


            //      Text("Çalışmalarımız"),

                ]),


          ),
          // Hizmetlerimiz

          Container(
            width: width,
            color: Constants.white,
            child: Column(

                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("Hizmetlerimiz", style: Constants.baslik,),

                  SizedBox(
                    height: 25,
                  ),


                  Container(
                    width: 1100,
                    child: Text("Mobil uygulama ve web projelerinizi 5 yıllık sektör "
                        "tecrübesiyle sizleri hizmet vermekten gurur duyuyoruz . Sizin için"
                        " hayalinizdeki uygulama / oyunu en iyi şekilde yapabiliriz. Müşteri"
                        " memnuniyeti odaklı çalışıyoruz ve siz projenizden tamamıyla mutlu oluncaya kadar"
                        " çalışmaya devam ediyoruz. Fikirlerinizi bizimle paylaşmadan önce gizlilik sözleşmesi imzalıyoruz. "
                        "Bulduğunuz fikirlerin mülkiyetinin tamamen size ait olması için uyguladığımız bir prosedürdür. "
                        "Amacımız sizi ve fikirlerinizi korumaktır.", style: Constants.alt_metin,),
                  ),

                  SizedBox(
                    height: 50,
                  ),


              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                    children: [




                     Container(
                       width: 350,
                       height: 150,
                       child: Card(

                              color: Colors.white,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(2)),
                              ),

                              child: Column(

                                  children: [
                                Padding(
                                  padding: const EdgeInsets.all(Constants.kPadding),
                                  child: Icon(
                                    size: 50,
                                    Icons.android_rounded, color: Constants.purple,),
                                ),

                                    Padding(
                                      padding: const EdgeInsets.all(Constants.kPadding),
                                      child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text("Android Mobil Uygulama" , style: Constants.baslik,)),
                                    )


                              ]),



                       ),
                     ),

                      SizedBox(width: 20,),

                      Container(
                        width: 350,
                        height: 150,
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),

                          child: Column(

                              children: [
                            Padding(
                              padding: const EdgeInsets.all(Constants.kPadding),
                              child: Icon(
                                size: 50,
                                Icons.apple, color: Constants.purple,),
                            ),

                                Padding(
                                  padding: const EdgeInsets.all(Constants.kPadding),
                                  child: Text("İos Mobil Uygulama" , style: Constants.baslik,),
                                )


                          ]),

                        ),
                      ),

                      SizedBox(width: 20,),

                      Container(
                        width: 350,
                        height: 150,
                        child: Card(

                          color: Colors.white,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),

                          child: Column(

                              children: [
                            Padding(
                              padding: const EdgeInsets.all(Constants.kPadding),
                              child: Icon(
                                size: 50,
                                Icons.web, color: Constants.purple ,),
                            ),

                                Padding(
                                  padding: const EdgeInsets.all(Constants.kPadding),
                                  child: Text("Web Geliştirme" , style: Constants.baslik,),
                                )


                          ]),

                        ),
                      ),






                    ],
                  ),

                  SizedBox(
                    height: 50,
                  ),
                ]),


          ),




          // 5 kısım iletişim
          Container(
            width: width,
            color: Constants.second_white,
            child: Column(

                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("İletişim" , style: Constants.baslik,),

                  SizedBox(
                    height: 25,
                  ),


                  Container(
                    width: 200,
                    child: TextButton(child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text("Whatsapp İle İletişime geç" , style: Constants.alt_metin,)), onPressed: () {


                        _incrementCounter();


                    },)
                  ),

                  SizedBox(
                    height: 50,
                  ),

                ]),


          ),



          // Sosyal medya

          Container(
            width: width,
            color: Constants.second_lightblack,
            child: Column(

                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("Sosyal medya Hesaplarımı takip edebilirsiniz." , style: TextStyle(fontSize: 20, color: Colors.white)),

                  SizedBox(
                    height: 25,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            js.context.callMethod('open', [
                              "https://www.instagram.com/hatay_berkay/"
                            ]);

                          });
                        },
                        child: CircleAvatar(
                          child: Image.asset("images/instagram.png", width: 30, height: 30,),
                          radius: 35.0,
                          backgroundColor: Constants.third_lightblack,

                        ),
                      ),

                      SizedBox(
                        width: 25,
                      ),

                      InkWell(
                        onTap: () {
                          setState(() {


                            js.context.callMethod('open', [
                            "https://www.youtube.com/channel/UCJtccO3elQlLwmceD13fc-A"
                            ]);
                          });


                        },
                        child: CircleAvatar(
                          child: Image.asset("images/youtube.png", width: 30, height: 30,),
                          radius: 35.0,
                          backgroundColor: Constants.third_lightblack,

                        ),
                      ),


                    ],

                  ),




                  SizedBox(
                    height: 50,
                  ),



                ]),


          ),


          // copy rights
          Container(
            width: width,
            color: Constants.third_lightblack,
            child: Column(

                children: [
                  SizedBox(height: 25,),


                Text("Copyright © 2020. Bir Hatay Berkay Projesidir." , style: TextStyle(fontSize: 20, color: Colors.white),),
                  SizedBox(height: 25,),

                ]),


          ),


        ],
      ),


    );
  }
}

