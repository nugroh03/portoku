import 'package:flutter/material.dart';
import 'package:portofolioku_flutter/constans.dart';
import 'package:portofolioku_flutter/model/project_model.dart';
import 'package:portofolioku_flutter/responsive.dart';
import 'package:portofolioku_flutter/widget/buttonWidget.dart';
import 'package:portofolioku_flutter/widget/keahlianWidget.dart';
import 'package:portofolioku_flutter/widget/listWidget.dart';
import 'package:portofolioku_flutter/widget/whatidoWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title1 = "About";
  String title2 = "Resume";
  String title3 = "Project";
  int indexmenu = 0;
  final controller = ScrollController();
  static const double spacing = 8;
  static const double padding = 20;
  int item = 0;

  get newItemCount => (itemsProject.length / 2).round();

  void jumpToItem(int item) {
    final width = controller.position.maxScrollExtent +
        context.size!.width -
        padding * 2 +
        spacing;
    final value = item / newItemCount * width;
    final valueSpace = padding + value;
    final newValue = valueSpace > controller.position.maxScrollExtent
        ? controller.position.maxScrollExtent
        : valueSpace;
    controller.jumpTo(newValue);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Widget headerImage() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.only(top: 30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/fotoku.JPG"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Nugroho Dwi Cahyono",
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(fontSize: 18),
          ),
        ]),
      );
    }

    Widget keahlian() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          KeahlianWidget(
            width: width,
            title: "Flutter Developer",
          ),
          KeahlianWidget(
            width: width,
            title: "Download Resume",
          ),
          KeahlianWidget(
            width: width,
            title: "Github",
          )
        ]),
      );
    }

    Widget address() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          width: width,
          color: greyColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Garut, Jawa Barat, Indonesia",
                textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "nugroho.dwi.cahyono@gmail.com",
                textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "+62823 3876 7130",
                style: blackTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ));
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(children: [
          ButtonWidget(
            title: "Email Me",
            width:
                (Responsive.isDesktop(context) || Responsive.isTablet(context))
                    ? (width)
                    : (width * 5),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonWidget(
            title: "Theme",
            width:
                (Responsive.isDesktop(context) || Responsive.isTablet(context))
                    ? (width)
                    : (width * 5),
          )
        ]),
      );
    }

    Widget menuButton() {
      return Container(
          height: 50,
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (indexmenu == 0)
                Container(
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 2, color: gradient1))),
                    child: Text(
                      title1,
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              if (indexmenu == 1)
                Container(
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 2, color: gradient1))),
                    child: Text(
                      title2,
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              if (indexmenu == 2)
                Container(
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 2, color: gradient1))),
                    child: Text(
                      title3,
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              Expanded(child: Container()),
              Container(
                width: 180,
                child: Row(
                  children: [
                    if (indexmenu != 0)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            indexmenu = 0;
                          });
                        },
                        child: Container(
                          width: 70,
                          child: Text(title1,
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                              )),
                        ),
                      ),
                    SizedBox(
                      width: 20,
                    ),
                    if (indexmenu != 1)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            indexmenu = 1;
                          });
                        },
                        child: Container(
                          width: 70,
                          child: Text(title2,
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                              )),
                        ),
                      ),
                    SizedBox(
                      width: 20,
                    ),
                    if (indexmenu != 2)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            indexmenu = 2;
                          });
                        },
                        child: Container(
                          width: 70,
                          child: Text(
                            title3,
                            style: blackTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      )
                  ],
                ),
              )
            ],
          ));
    }

    Widget aboutUs() {
      return Expanded(
        child: Container(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: width,
                  height: 100,
                  child: Text(
                      "I'm a flutter developer. i have more than one year experience in mobile app using flutter.")),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        child: Text(
                          "What I am doing",
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  WhatIDO(
                                    width: width,
                                    title: "Frontend Developer",
                                    icons: Icons.desktop_windows,
                                    height: (Responsive.isDesktop(context)) ||
                                            (Responsive.isTablet(context))
                                        ? 100
                                        : 150,
                                    description:
                                        "I can build build beautiful and responsive your desain mobile or website using flutter",
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  WhatIDO(
                                    width: width,
                                    title: "Consume API",
                                    icons: Icons.desktop_windows,
                                    height: (Responsive.isDesktop(context)) ||
                                            (Responsive.isTablet(context))
                                        ? 100
                                        : 150,
                                    description:
                                        "I can consume API for your apps or website from backend",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget resume() {
      return Expanded(
          child: Container(
        child: ListView(
          shrinkWrap: false,
          children: [
            Container(
              constraints: BoxConstraints(minHeight: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Education",
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Ship Building Engineering",
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("Politechnic State Of Madura ( 2013 - 2016 )",
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                "Saya memang tidak memiliki latar belakang pendidikan seorang programer. namun tahun 2020 saya memulai belajar programer dari teman dan juga pelatihan-pelatihan programer yang ada seperti flutter",
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                )),
                          ]),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Experience",
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Front End Developer",
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(
                                "Hejo Teknologi Indonesia (Sept 2020 - Feb 2021)",
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                "Pekerjaan Saya sebagai Seorang Flutter Developer Dimulai dari sini",
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                )),
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: greyColor,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: (Responsive.isDesktop(context)) ||
                                    (Responsive.isTablet(context))
                                ? null
                                : 50,
                            child: Text(
                              "Language & Framework",
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListWidget(width: width, title: "Flutter"),
                          ListWidget(width: width, title: "Firebase"),
                          ListWidget(width: width, title: "NextJs"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: (Responsive.isDesktop(context)) ||
                                    (Responsive.isTablet(context))
                                ? null
                                : 50,
                            child: Text(
                              "Tools & Softwares",
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ListWidget(width: width, title: "Visual Studio Code"),
                          ListWidget(width: width, title: "MySQL"),
                          ListWidget(width: width, title: "Figma"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ));
    }

    Widget project() {
      return Expanded(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                  ),
                  itemCount: itemsProject.length,
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  itemBuilder: (context, index) {
                    ProjectModel item = itemsProject[index];
                    return Container(
                        width: width,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                                width: width,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    color: greyColor,
                                    image: DecorationImage(
                                        image: AssetImage(item.image)))),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                              flex: 1,
                              child: Container(child: Text(item.title)))
                        ]));
                  }),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                    width: width,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                item = item - 1 < 0 ? item : item - 1;
                                jumpToItem(item);
                              },
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          gradient1,
                                          gradient2,
                                        ],
                                      )),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.arrow_back_ios,
                                      color: whiteColor))),
                          GestureDetector(
                              onTap: () {
                                item =
                                    item + 1 >= newItemCount ? item : item + 1;
                                jumpToItem(item);
                              },
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          gradient1,
                                          gradient2,
                                        ],
                                      )),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.arrow_forward_ios,
                                      color: whiteColor))),
                        ])),
              ),
            )
          ],
        ),
      ));
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            gradient1,
            gradient2,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Responsive(
          mobile: Container(
            margin: EdgeInsets.symmetric(
              horizontal: width * 0.1,
              vertical: height * 0.05,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: width,
                    height: height,
                    child: Column(
                      children: [
                        headerImage(),
                        keahlian(),
                        address(),
                        button()
                      ],
                    ),
                  ),
                  Container(
                      width: width,
                      height: height,
                      child: Column(
                        children: [
                          menuButton(),
                          if (indexmenu == 0) aboutUs(),
                          if (indexmenu == 1) resume(),
                          if (indexmenu == 2) project(),
                        ],
                      )),
                ],
              ),
            ),
          ),
          tablet: Container(
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.1,
                vertical: height * 0.1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: width,
                        height: height,
                        child: SingleChildScrollView(
                          child: Column(children: [
                            headerImage(),
                            keahlian(),
                            address(),
                            //button()
                          ]),
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                        width: width,
                        height: height,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            menuButton(),
                            if (indexmenu == 0) aboutUs(),
                            if (indexmenu == 1) resume(),
                            if (indexmenu == 2) project(),
                          ],
                        )),
                  )
                ],
              )),
          desktop: Container(
            margin: EdgeInsets.symmetric(
              horizontal: width * 0.1,
              vertical: height * 0.1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      width: width,
                      height: height,
                      child: Column(children: [
                        headerImage(),
                        keahlian(),
                        address(),
                        button()
                      ])),
                ),
                SizedBox(
                  width: 30,
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          menuButton(),
                          if (indexmenu == 0) aboutUs(),
                          if (indexmenu == 1) resume(),
                          if (indexmenu == 2) project(),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
