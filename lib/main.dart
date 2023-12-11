import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_app/app_styles.dart';
import 'package:islam_app/size_config.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Dinar'),
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [Locale("ar", "AE")],
        locale: const Locale("ar", "AE"),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String username = "أحمد علي";
  int _selectedIndex = 0;

  Widget buildMyNavBar(BuildContext context) {
    return Container(
      //todo set it white again
      decoration: const BoxDecoration(color: kWhiteColor, boxShadow: [
        BoxShadow(color: Color(0xFFd4d4d4), offset: Offset(3, 0), blurRadius: 5)
      ]),
      child: Wrap(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Visibility(
                  visible: _selectedIndex == 0 ? true : false,
                  child: Container(
                    width: 52,
                    height: 2,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: kBlackColor)),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  //todo edit home icon
                  icon: _selectedIndex == 0
                      ? const Icon(
                    Icons.home,
                    color: kBlackColor,
                  )

                      : const Icon(
                          Icons.home_outlined,
                          color: kGreyColor,
                        ),
                ),
                GestureDetector(
                    onTap: () => {
                          setState(() {
                            _selectedIndex = 0;
                          })
                        },
                    child: Container(
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "الرئيسية",
                        style: _selectedIndex == 0
                            ? const TextStyle(fontSize: 14, color: kBlackColor)
                            : const TextStyle(fontSize: 12, color: kGreyColor),
                      ),
                    ))
              ],
            ),
            Column(
              children: [
                Visibility(
                  visible: _selectedIndex == 1 ? true : false,
                  child: Container(
                    width: 52,
                    height: 2,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: kBlackColor)),
                  ),
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    icon: _selectedIndex == 1
                        ? SvgPicture.asset(
                            'assets/Huge-icon-education-bulk-teacher 01.svg',
                            color: kBlackColor,
                          )
                        : SvgPicture.asset(
                            'assets/Huge-icon-education-bulk-teacher 01.svg',
                            color: kGreyColor,
                          )),
                GestureDetector(
                    onTap: () => {
                          setState(() {
                            _selectedIndex = 1;
                          })
                        },
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        "المحاضرون",
                        style: _selectedIndex == 1
                            ? const TextStyle(fontSize: 14, color: kBlackColor)
                            : const TextStyle(fontSize: 12, color: kGreyColor),
                      ),
                    ))
              ],
            ),
            Column(
              children: [
                Visibility(
                  visible: _selectedIndex == 2 ? true : false,
                  child: Container(
                    width: 52,
                    height: 2,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: kBlackColor)),
                  ),
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    icon: _selectedIndex == 2
                        ? SvgPicture.asset(
                            'assets/Huge-icon-education-bulk-book 02.svg',
                            color: kBlackColor,
                          )
                        : SvgPicture.asset(
                            'assets/Huge-icon-education-bulk-book 02.svg',
                            color: kGreyColor,
                          )),
                GestureDetector(
                    onTap: () => {
                          setState(() {
                            _selectedIndex = 2;
                          })
                        },
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        "المكتبة",
                        style: _selectedIndex == 2
                            ? const TextStyle(fontSize: 14, color: kBlackColor)
                            : const TextStyle(fontSize: 12, color: kGreyColor),
                      ),
                    ))
              ],
            ),
            Column(
              children: [
                Visibility(
                  visible: _selectedIndex == 3 ? true : false,
                  child: Container(
                    width: 52,
                    height: 2,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: kBlackColor)),
                  ),
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    icon: _selectedIndex == 3
                        ? SvgPicture.asset(
                            'assets/Huge-icon-education-bulk-book 01.svg',
                            color: kBlackColor,
                          )
                        : SvgPicture.asset(
                            'assets/Huge-icon-education-bulk-book 01.svg',
                            color: kGreyColor,
                          )),
                GestureDetector(
                    onTap: () => {
                          setState(() {
                            _selectedIndex = 3;
                          })
                        },
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        "المقالات",
                        style: _selectedIndex == 3
                            ? const TextStyle(fontSize: 14, color: kBlackColor)
                            : const TextStyle(fontSize: 12, color: kGreyColor),
                      ),
                    ))
              ],
            ),
            Column(
              children: [
                Visibility(
                  visible: _selectedIndex == 4 ? true : false,
                  child: Container(
                    width: 52,
                    height: 2,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: kBlackColor)),
                  ),
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 4;
                      });
                    },
                    icon: _selectedIndex == 4
                        ? SvgPicture.asset(
                            'assets/Huge-icon-smart house-bulk-sensor.svg',
                            color: kBlackColor,
                          )
                        : SvgPicture.asset(
                            'assets/Huge-icon-smart house-bulk-sensor.svg',
                            color: kGreyColor,
                          )),
                GestureDetector(
                    onTap: () => {
                          setState(() {
                            _selectedIndex = 4;
                          })
                        },
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        "بث مباشر",
                        style: _selectedIndex == 4
                            ? TextStyle(fontSize: 14, color: kBlackColor)
                            : TextStyle(fontSize: 12, color: kGreyColor),
                      ),
                    ))
              ],
            ),
          ],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: buildMyNavBar(context),
      drawer: const Drawer(),
      appBar: AppBar(
        //leading:
        leading: Container(

        ),
        leadingWidth: 0,
        iconTheme: const IconThemeData(color: kGreyColor),
        backgroundColor: kWhiteColor,
        /*actions: <Widget>[

        ],*/
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
              builder: (context) {
                return IconButton(
                  icon: SvgPicture.asset(
                      'assets/Huge-icon-menu-bulk-menu-line-horizontal.svg'),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                );
              }
            ),
            Container(
              height: 40,
              width: 240,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFd4d4d4),
                        offset: Offset(0, 0),
                        blurRadius: 5)
                  ],
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(kBorderRadius)),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                          'assets/Huge-icon-interface-solid-search 02.svg'),
                      onPressed: () {},
                    ),
                    hintStyle: const TextStyle(fontSize: 10, color: kGreyColor),
                    hintText: 'أبحث عن أي شئ من هنا',
                    border: InputBorder.none),
              ),
            ),
            IconButton(
              icon: SvgPicture.asset('assets/notification.svg'),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SizedBox(height: SizeConfig.blockSizeVertical! * 3),
              Container(
                margin: EdgeInsets.only(
                    right: kPaddingHorizontal * 0.5, top: 10, bottom: 7),
                child: Row(
                  children: [
                    const Text("مرحباً بك،",
                        style: TextStyle(color: kGreyColor)),
                    Text(" $username",
                        style: const TextStyle(color: kBlackColor))
                  ],
                ),
              ),
              //SizedBox(height: SizeConfig.blockSizeVertical! * 3),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          {
                            return CardItem.createCard(
                                "الجدول الدراسي",
                                100,
                                80,
                                'assets/Huge-icon-time and date-bulk-calendar 01.svg',
                                CardTypes.mainTabs,
                                '');
                          }
                        case 1:
                          {
                            return CardItem.createCard(
                                "إستطلاع الرأي",
                                100,
                                80,
                                'assets/Huge-icon-notes and task-bulk-task 01.svg',
                                CardTypes.mainTabs,
                                '');
                          }
                        case 2:
                          {
                            return CardItem.createCard(
                                "النتيجة الدراسية",
                                100,
                                80,
                                'assets/Huge-icon-education-bulk-report.svg',
                                CardTypes.mainTabs,
                                '');
                          }
                        default:
                          {
                            return CardItem.createCard(
                                "المواد الدراسية",
                                100,
                                80,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.mainTabs,
                                '');
                          }
                      }
                      //return index == 0 ? CardItem.createCard("مرحا") : CardItem.createCard(";ش");
                    }),
              ),

              //previous courses
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: kPaddingHorizontal * 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 6.87),
                          width: 12,
                          height: 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kGoldColor),
                        ),
                        const Text(
                          "الدورات السابقة",
                          style: TextStyle(color: kGreyColor),
                        )
                      ],
                    ),
                    const Text(
                      "عرض الكل",
                      style: TextStyle(color: kGoldColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          {
                            return CardItem.createCard(
                                "",
                                297,
                                88,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.previousCourses,
                                'مشاهدة');
                          }
                        case 1:
                          {
                            return CardItem.createCard(
                                "",
                                297,
                                88,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.previousCourses,
                                'مشاهدة');
                          }
                        case 2:
                          {
                            return CardItem.createCard(
                                "",
                                297,
                                88,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.previousCourses,
                                'مشاهدة');
                          }
                        default:
                          {
                            return CardItem.createCard(
                                "",
                                297,
                                88,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.previousCourses,
                                'مشاهدة');
                          }
                      }
                      //return index == 0 ? CardItem.createCard("مرحا") : CardItem.createCard(";ش");
                    }),
              ),

              //visual library
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: kPaddingHorizontal * 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 6.87),
                          width: 12,
                          height: 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kGoldColor),
                        ),
                        const Text(
                          "مقتطفات من المكتبة المرئية",
                          style: TextStyle(color: kGreyColor, fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          {
                            return CardItem.createCard(
                                "",
                                297,
                                88,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.virtualLib,
                                'عرض');
                          }
                        case 1:
                          {
                            return CardItem.createCard(
                                "",
                                297,
                                88,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.virtualLib,
                                'عرض');
                          }
                        case 2:
                          {
                            return CardItem.createCard(
                                "",
                                297,
                                88,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.virtualLib,
                                'عرض');
                          }
                        default:
                          {
                            return CardItem.createCard(
                                "",
                                297,
                                88,
                                'assets/drawable-hdpi/fdddd.png',
                                CardTypes.virtualLib,
                                'عرض');
                          }
                      }
                      //return index == 0 ? CardItem.createCard("مرحا") : CardItem.createCard(";ش");
                    }),
              ),

              //audio library
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: kPaddingHorizontal * 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 6.87),
                          width: 12,
                          height: 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kGoldColor),
                        ),
                        const Text(
                          "مقتطفات من المكتبة الصوتية",
                          style: TextStyle(color: kGreyColor, fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 222,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          {
                            return CardItem.createCard(
                                "",
                                161,
                                222,
                                'assets/drawable-xxxhdpi/Mask Group 11.png',
                                CardTypes.audioLib,
                                'عرض');
                          }
                        case 1:
                          {
                            return CardItem.createCard(
                                "",
                                161,
                                222,
                                'assets/drawable-xxxhdpi/Mask Group 11.png',
                                CardTypes.audioLib,
                                'عرض');
                          }
                        case 2:
                          {
                            return CardItem.createCard(
                                "",
                                161,
                                222,
                                'assets/drawable-xxxhdpi/Mask Group 11.png',
                                CardTypes.audioLib,
                                'عرض');
                          }
                        default:
                          {
                            return CardItem.createCard(
                                "",
                                161,
                                222,
                                'assets/drawable-xxxhdpi/Mask Group 11.png',
                                CardTypes.audioLib,
                                'عرض');
                          }
                      }
                      //return index == 0 ? CardItem.createCard("مرحا") : CardItem.createCard(";ش");
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardItem {
  static Widget createCard(String title, double width, double height,
      String imagePath, CardTypes cardTypes, String btnText) {
    switch (cardTypes) {
      case CardTypes.mainTabs:
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFd4d4d4),
                        offset: Offset(0, 0),
                        blurRadius: 5)
                  ]),
              width: width,
              height: height,
              margin: const EdgeInsets.all(7),
              child: SvgPicture.asset(imagePath),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
              ),
            )
          ],
        );
      case CardTypes.audioLib:
        return Container(
          padding: const EdgeInsets.only(top: 5),
          margin: const EdgeInsets.all(5),
          width: width,
          height: height,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                color: Color(0xFFd4d4d4), offset: Offset(0, 0), blurRadius: 5)
          ], color: kWhiteColor, borderRadius: BorderRadius.circular(15)),
          child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: 160,
                    height: 88,
                    child: Image.asset(
                      imagePath
                    )),
                const SizedBox(
                    child: Text(
                      "شرح كتاب العظمة لسماحة الشيخ العلامة د. عبدالله بن عبدالرحمن بن جبرين",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  width: 132,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: SliderTheme(
                          data: SliderThemeData(
                              overlayShape: SliderComponentShape.noOverlay,
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 3),
                              trackHeight: 2.0),
                          child: Slider(
                            thumbColor: kBlackColor,
                            activeColor: kGreyColor,
                            inactiveColor: kGreyColor,
                            value: 0.5,
                            //max: duration.inSeconds.toDouble(),
                            onChanged: (value) {
                              //seekToSec(value.toInt());
                            },
                          ),
                        ),
                      ),
                      IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(
                            Icons.play_arrow,
                            size: 20,
                            color: kGoldColor,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(horizontal: 14),
                    width: 132,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        border: Border.all(width: 1, color: kBlackColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        SvgPicture.asset(
                          width: 10,
                            'assets/svgexport-6ukfv.svg'),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "تحميل",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ))
              ]),
        );
      default:
        return Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.all(10),
          width: width,
          height: height,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                color: Color(0xFFd4d4d4), offset: Offset(0, 0), blurRadius: 5)
          ], color: kWhiteColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Image.asset(
                    imagePath,
                    width: 83,
                    height: 83,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                      width: 191,
                      height: 48,
                      child: Text(
                        "دورة ابن جبرن الرابعة عشر - تقديم الشيخ ابن جبرين",
                        style: TextStyle(fontSize: 12),
                      )),
                  Container(
                    width: 191,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(kBorderRadius)),
                                child: SvgPicture.asset(
                                    'assets/Huge-icon-time and date-bulk-time-oclock.svg')),
                            const Text(
                              "ربيع الأول 1334 هـ",
                              style: TextStyle(fontSize: 10, color: kGreyColor),
                              textAlign: TextAlign.right,
                            )
                          ],
                        ),
                        Container(
                            width: 58,
                            height: 16,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color(0xFFd4d4d4),
                                      offset: Offset(0, 0),
                                      blurRadius: 20)
                                ],
                                color: kLightGold,
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius)),
                            child: Text(
                              btnText,
                              style: const TextStyle(
                                  fontSize: 12, color: kGoldColor),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        );
    }
  }
}

enum CardTypes { mainTabs, previousCourses, virtualLib, audioLib }
