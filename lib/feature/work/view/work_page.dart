import 'package:blog_app/feature/work/view/work_detail.dart';
import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  List<Map> mobileApp = [
    {
      "name": "B2b Mobil App",
      "techology": "Flutter - Dart - Php - Mysql",
      "description":
          "Getx State Managment ve RestApi üzerinden geliştirdiğim bu uygulama firmadan firmalara alışveriş imkanı sağlayan eticaret uygulamasıdır. Uygulama içerisinde ürünler, kategoriler , ürün arama , sipariş , web api üzerinden online ödeme, sipairiş takibi gibi modüller bulunmaktadır. Firebase cloud messaging ile bildirim işlemleri sağlanmaktadır.",
      "image": [
        "assets/project/mobile/b2b/payment.png",
        "assets/project/mobile/b2b/product_detail.png",
        "assets/project/mobile/b2b/products.png"
      ],
      "url":
          "https://play.google.com/store/apps/details?id=com.wicomtr.wi_b2b_app",
      "date": "2020"
    },
    {
      "name": "Cetvel Ön Muhasabe",
      "techology": "Flutter - Dart - NodeJs - PostgreSql",
      "description":
          "Bloc State Managment ile geliştirmeye devam ettiğim ön muhasebe uygulamasıdır. İçeriğinde fatura, irsaliye,ürünler cariler , alış ve satış faturası oluşturma , teklif gibi modüller bulunmaktadır",
      "image": [
        "assets/project/mobile/cetvel/cetvel.jpg",
        "assets/project/mobile/cetvel/cetvel2.jpg",
        "assets/project/mobile/cetvel/cetvel4.jpg"
      ],
      "url": "-",
      "date": "2021"
    },
    {
      "name": "Wiradius",
      "techology": "Flutter - Dart - NodeJs - PostgreSql",
      "description":
          "ISS firmalarının personelleri için geliştirdiğim bu uygulamada personellerin arkaplanda sürekli konum takip işlemlerinin yapılması (Java) , görev sistemi , saha cihazlarının (mikrotik , ubnt ) kontrolü, abone bilgileri gibi modüller bulunmaktadır. Bloc State Managment ile Nodejs Server üzerinden haberleşme sağlanmaktadır. Ayrıca Socket Server ile birlikte uygulama kullanıcısının anlık konum bilgileri alınmaktadır. Uygulama içerisinde google maps ile birlikte iss firmalarının cihaz konumları görüntülenebilir ve yol tarifi alınabilir.",
      "image": [
        "assets/project/mobile/wiradius/Frame1.png",
        "assets/project/mobile/wiradius/Frame4.png",
        "assets/project/mobile/wiradius/Frame6.png"
      ],
      "url": "-",
      "date": "2021"
    },
    {
      "name": "ISS Hesabım",
      "techology": "Flutter - Dart - NodeJs - PostgreSql",
      "description":
          "Bu uygulama Türkiye’de bulunan ISS firmalarının abonelerinin kullanımına sunulmak amacıyla Flutter Flavor kullanılarak birden fazla firmaya özel olarak çıktı alınabilen Bloc state managment ve Nodejs Server üzerinden haberleşme sağlayan uygulamadır. Uygulama içerisinde kredi kartı kaydetme , paket süresi uzatma , abonelik bilgileri ve takibi , kullanım miktarları , faturalar gibi modüller bulunmaktadır. MasterPass benzeri altyapı ile web api üzerinden kayıtlı kart ile fatura ödeme işlemleri gerçekleşmektedir. Firebase cloud messaging ve flutter local notification paketleri ile bildirim işlemleri yönetilmektedir. ",
      "image": [
        "assets/project/mobile/xrealnet/xrealnet_3.png",
        "assets/project/mobile/xrealnet/xrealnet_4.png",
        "assets/project/mobile/xrealnet/xrealnet_5.png"
      ],
      "url":
          "https://play.google.com/store/apps/details?id=com.wiradius.xrealnet_oim",
      "date": "2022"
    },
  ];

  List<Map> webApp = [
    {
      "name": "Berber Randevu",
      "techology": "Php - Codeigniter - Jquery - Mysql",
      "description":
          "Kuaförler için online randevu oluşturma. Yönetim Paneli. Randevu takip",
      "image": [
        "assets/project/web/volkansaglam/volkansaglam1.png",
        "assets/project/web/volkansaglam/volkansaglam2.png",
        "assets/project/web/volkansaglam/volkansaglam3.png",
        "assets/project/web/volkansaglam/volkansaglam4.png"
      ],
      "url": "https://volkansaglam.com.tr/",
      "date": "2019"
    },
    {
      "name": "Bayramoğlu Emlak",
      "techology": "Php - Codeigniter - Jquery - Mysql",
      "description": "Emlak tanıtım",
      "image": [
        "assets/project/web/bayramoglu/bayramoglu.png",
      ],
      "url": "https://bayramoglugyd.com/",
      "date": "2021"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xff222222),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "Projeler",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ])),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 200,
                child: TabBar(
                  indicator: BoxDecoration(),
                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Text("Mobil"),
                    ),
                    Tab(
                      child: Text("Web"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  _app(context, mobileApp),
                  _app(context, webApp),
                  /*Column(
                    children: [
                      alertContainer(context, "info", "Pek Yakında"),
                    ],
                  )*/
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  _app(BuildContext context, List<Map> app) {
    return GridView.extent(
        padding: const EdgeInsets.all(0),
        maxCrossAxisExtent: 220.0,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: app
            .map((el) => GestureDetector(
                  onTap: () {
                    _showDialog(context, el);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xff333333), width: 2),
                      color: const Color(0xff444444),
                    ),
                    margin: const EdgeInsets.all(0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(el['image'][0]),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: const Color(0xff444444),
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8, bottom: 0),
                                child: Text(
                                  el['name'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList());
  }

  void _showDialog(context, Map detail) {
    showGeneralDialog(
      context: context,
      barrierColor: const Color(0xff222222), // Background color
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return WorkDetail(
          detail: detail,
        );
      },
    );
  }
}
