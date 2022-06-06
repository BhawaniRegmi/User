import 'dart:math';

import 'package:flutter/material.dart';
import 'package:user/imageo.dart';
import 'package:user/jpt2.dart';

import 'package:user/model/data.dart';
import 'package:user/model/doctor_model.dart';
import 'package:user/pages/detail_page.dart';
import 'package:user/pages/diseasesPage.dart';
import 'package:user/pages/profilePage.dart';
import 'package:user/pages/splash_page.dart';
import 'package:user/theme/light_color.dart';
import 'package:user/theme/text_style.dart';
import 'package:user/theme/theme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List<DoctorModel> doctorDataList;
  late List<DoctorModel> doctorDataList;
  @override
  void initState() {
    //doctorMapList
    doctorDataList = doctorMapList.map((x) => DoctorModel.fromJson(x)).toList();
    super.initState();
  }

  Widget _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: Icon(
        Icons.short_text,
        size: 30,
        color: Colors.black,
      ),
      actions: <Widget>[
        Icon(
          Icons.notifications_none,
          size: 30,
          color: LightColor.grey,
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          child: Container(
            // height: 40,
            // width: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: Image.asset("assets/user.png", fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }

  /* child: Text(
            "We are always here for you ",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),  */

  Widget _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 24,
        ),
        Center(
          child: Text(
            "You are welcome ",
            style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Smart Health Care", style: TextStyles.h1Style),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Provide An Exceptional ",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Center(
          child: Text(
            "Patient Experience ",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ); //.p16;
  }

  Widget _searchField() {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(13)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: LightColor.grey.withOpacity(.3),
            blurRadius: 15,
            offset: Offset(5, 5),
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          border: InputBorder.none,
          hintText: "Search", //subTitleColor
          //   hintStyle: TextStyles.body.subTitleColor,
          suffixIcon: SizedBox(
            width: 50,
            child: Icon(Icons.search, color: LightColor.purple), //alignCenter
            /*  .alignCenter
                  .ripple(() {}, borderRadius: BorderRadius.circular(13))*/
          ),
        ),
      ),
    );
  }

  Widget _category() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Center(child: Text("Our Special services")),
              Text(
                "See All",
                style: TextStyles.titleNormal
                    .copyWith(color: Theme.of(context).primaryColor),
              )
            ],
          ),
        ),
        SizedBox(
          /*  height: AppTheme.fullHeight(context) * .28,
          width: AppTheme.fullWidth(context),  */
          height: 400,
          width: 10000,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/COVID-19-symptoms.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyDisease(
                                  imago: AssetImage("assets/covid remedies"),
                                )),
                      );
                    },
                  )),

              Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/liv.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyDisease(imago: AssetImage("assets/livo"))),
                      );
                    },
                  )),

              Container(
                  height: 400,
                  width: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/stroke.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyDisease(
                                  imago: AssetImage("assets/strokeo"))));
                    },
                  )),

              Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/tuber.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyDisease(imago: AssetImage("assets/tubero"))),
                      );
                    },
                  )),

              Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/cold.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyDisease(imago: AssetImage("assets/cold"))),
                      );
                    },
                  )),

              Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/di.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyDisease(imago: AssetImage("assets/direho"))),
                      );
                    },
                  )),

              Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/hearto.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyDisease(imago: AssetImage("assets/heartoo"))),
                      );
                    },
                  )),

              Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/st.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyDisease(imago: AssetImage("assets/strokeo"))),
                      );
                    },
                  )),
              // _categoryCard("Chemist & Drugist", "350 + Stores",
              _categoryCard("Heart disease", "350 + Stores",
                  color: LightColor.green, lightColor: LightColor.lightGreen),
              _categoryCard("Covid - 19 Specialist", "899 Doctors",
                  color: LightColor.skyBlue, lightColor: LightColor.lightBlue),
              _categoryCard("Cardiologists Specialist", "500 + Doctors",
                  color: LightColor.orange, lightColor: LightColor.lightOrange),
              _categoryCard("Dermatologist", "300 + Doctors",
                  color: LightColor.green, lightColor: LightColor.lightGreen),
              _categoryCard("General Surgeon", "500 + Doctors",
                  color: LightColor.skyBlue, lightColor: LightColor.lightBlue)
            ],
          ),
        ),

        // style: TextStyles.h1Style
        Container(
          child: Text(
            "We are always here for you ",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Container(
          child: Text(
            "Our services ",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Container(
          child: Row(
            children: [
              SizedBox(
                height: 50,
                width: 15,
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 40.0,
                  textDirection: TextDirection.ltr,
                  semanticLabel:
                      'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                ),
              ),
              SizedBox(
                height: 50,
                width: 40,
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.local_hospital,
                  color: Colors.blue,
                  size: 40.0,
                  textDirection: TextDirection.ltr,
                  semanticLabel:
                      'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                ),
              ),
              SizedBox(
                height: 50,
                width: 40,
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.medical_information,
                  color: Colors.blue,
                  size: 40.0,
                  textDirection: TextDirection.ltr,
                  semanticLabel:
                      'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _categoryCard(String title, String subtitle, //lightColor
      {Color color = Colors.red,
      Color lightColor = Colors.black}) {
    TextStyle titleStyle = TextStyle(
      fontSize: 60,
      color: Colors.red,
    );
    TextStyle subtitleStyle = TextStyle(
      fontSize: 60,
      color: Colors.red,
    );
    if (AppTheme.fullWidth(context) < 392) {
      // titleStyle = TextStyles.body.bold.white;
      // subtitleStyle = TextStyles.bodySm.bold.white;
    }
    return AspectRatio(
      aspectRatio: 6 / 8,
      child: Container(
          height: 280, //AppTheme
          width: AppTheme.fullWidth(context) * .3,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 10,
                color: lightColor.withOpacity(.8),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -20,
                    left: -20,
                    child: CircleAvatar(
                      backgroundColor: lightColor,
                      radius: 60,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      //Flexible
                      Flexible(
                        child: Text(title, style: titleStyle),
                      ),
                      SizedBox(height: 10),
                      Flexible(
                        child: Text(
                          subtitle,
                          style: subtitleStyle,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ) /*.ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(20))),*/
          ),
    );
  }

  Widget _doctorsList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //bold
              Text(
                "Top Doctors",
              ),
              IconButton(
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                  })
              // .p(12).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(20))),
            ],
          ),
          getdoctorWidgetList()
        ],
      ),
    );
  }

  Widget getdoctorWidgetList() {
    return Column(
        children: doctorDataList.map((x) {
      return _doctorTile(x);
    }).toList());
  }

  Widget _doctorTile(DoctorModel model) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      },
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 10,
                color: LightColor.grey.withOpacity(.2),
              ),
              BoxShadow(
                offset: Offset(-3, 0),
                blurRadius: 15,
                color: LightColor.grey.withOpacity(.1),
              )
            ],
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: randomColor(),
                  ),
                  child: Image.asset(
                    model.image,
                    height: 50,
                    width: 50,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              title: Text(
                model.name,
              ),
              subtitle: Text(
                model.type, //subTitleColor
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ) /*.ripple(() {
          Navigator.pushNamed(context, "/DetailPage", arguments: model);
        }, borderRadius: BorderRadius.all(Radius.circular(20))),*/
          ),
    );
  }

  Color randomColor() {
    var random = Random();
    final colorList = [
      Theme.of(context).primaryColor,
      LightColor.orange,
      LightColor.green,
      LightColor.grey,
      LightColor.lightOrange,
      LightColor.skyBlue,
      LightColor.titleTextColor,
      Colors.red,
      Colors.brown,
      LightColor.purpleExtraLight,
      LightColor.skyBlue,
    ];
    var color = colorList[random.nextInt(colorList.length)];
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //_appBar
      //  appBar: _appBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _header(),
                _searchField(),
                _category(),
              ],
            ),
          ),
          _doctorsList()
        ],
      ),
    );
  }
}
