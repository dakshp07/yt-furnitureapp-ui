import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yt_trvael_app_ui/deatilsPage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: new Container(
        padding: const EdgeInsets.only(top:50),
        child: new Column(
          children: [
            new Container(
              padding: const EdgeInsets.all(30),
              child: new Column(
            children: [
              new Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                  new Text("Dashboard",style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.white,
                  )),
                  new SvgPicture.asset("assets/icons/notification.svg"),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 30),),
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: new TextFormField(
                  decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search,color: Colors.white,size: 30,),
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Search",
                    hintStyle: GoogleFonts.poppins(fontSize: 22,color: Colors.white),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              new Padding(padding: const EdgeInsets.only(top: 30)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Container(
                    height: 35,
                    width: 80,
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: new TextFormField(
                      decoration: new InputDecoration(
                        hintText: "All",
                        hintStyle: GoogleFonts.poppins(fontSize:16,color: Colors.white),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 28,vertical: 10)
                      ),
                    ),
                  ),
                  new Text("Sofa",style: GoogleFonts.poppins(fontSize: 16,color: Colors.white),),
                  new Text("Park Bench",style: GoogleFonts.poppins(fontSize: 16,color: Colors.white),),
                  new Text("Armchair",style: GoogleFonts.poppins(fontSize: 16,color: Colors.white),)
                ],
              ),
              //new Padding(padding: const EdgeInsets.only(top: 40)),
            ],
          ),
            ),
            new Stack(
                  children: [
                    new Container(
                      //margin: const EdgeInsets.only(top:10),
                      //padding: const EdgeInsets.all(30),
                      height: 500,
                      width: 720,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        )
                      ),
                      child: new Container(
                        //margin: const EdgeInsets.only(top:10),
                          child: new SingleChildScrollView(
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                new Card(
                                  margin: const EdgeInsets.all(30),
                                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                  shadowColor: Colors.black54,
                                  color: Colors.white,
                                  elevation: 8,
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          new Padding(padding: const EdgeInsets.symmetric(vertical: 15)),
                                          new Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                                              new Text("Classic Leather",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          new Padding(padding: const EdgeInsets.only(top:4)),
                                          new Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                                              new Text("Arm Chair",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          new Padding(padding: const EdgeInsets.symmetric(vertical: 20)),
                                          new Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                            new Container(
                                            alignment: Alignment.center,
                                            height: 45,
                                            width: 80,
                                            decoration: new BoxDecoration(
                                              color: Colors.amberAccent[700],
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(15),
                                                bottomLeft: Radius.circular(15)
                                              )
                                            ),
                                            child: new Column(
                                              children: [
                                                new Padding(padding: const EdgeInsets.only(top: 5)),
                                                new Text("56\$",style: GoogleFonts.poppins(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold)),
                                              ],
                                            )
                                          )
                                            ],
                                          )
                                        ],
                                      ),
                                      new Image.asset("assets/images/Item_1.png",fit: BoxFit.fill,)
                                    ],
                                  ),
                                ),
                                new GestureDetector(
                                    child: new Card(
                                    margin: const EdgeInsets.all(30),
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                    shadowColor: Colors.black54,
                                    color: Colors.white,
                                    elevation: 8,
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        new Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            new Padding(padding: const EdgeInsets.symmetric(vertical: 15)),
                                            new Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                                                new Text("Poppy Plastic",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                            new Padding(padding: const EdgeInsets.only(top:4)),
                                            new Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                                                new Text("Tub Chair",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                            new Padding(padding: const EdgeInsets.symmetric(vertical: 20)),
                                            new Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                              new Container(
                                              alignment: Alignment.center,
                                              height: 45,
                                              width: 80,
                                              decoration: new BoxDecoration(
                                                color: Colors.amberAccent[700],
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(15),
                                                  bottomLeft: Radius.circular(15)
                                                )
                                              ),
                                              child: new Column(
                                                children: [
                                                  new Padding(padding: const EdgeInsets.only(top: 5)),
                                                  new Text("56\$",style: GoogleFonts.poppins(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold)),
                                                ],
                                              )
                                            )
                                              ],
                                            )
                                          ],
                                        ),
                                        new Image.asset("assets/images/Item_2.png",fit: BoxFit.fill,)
                                      ],
                                    ),
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetailsPage()));
                                  },
                                ),
                                new Card(
                                  margin: const EdgeInsets.all(30),
                                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                  shadowColor: Colors.black54,
                                  color: Colors.white,
                                  elevation: 8,
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          new Padding(padding: const EdgeInsets.symmetric(vertical: 15)),
                                          new Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                                              new Text("Bar Stool",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          new Padding(padding: const EdgeInsets.only(top:4)),
                                          new Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                                              new Text("Chair",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          new Padding(padding: const EdgeInsets.symmetric(vertical: 20)),
                                          new Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                            new Container(
                                            alignment: Alignment.center,
                                            height: 45,
                                            width: 80,
                                            decoration: new BoxDecoration(
                                              color: Colors.amberAccent[700],
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(15),
                                                bottomLeft: Radius.circular(15)
                                              )
                                            ),
                                            child: new Column(
                                              children: [
                                                new Padding(padding: const EdgeInsets.only(top: 5)),
                                                new Text("56\$",style: GoogleFonts.poppins(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold)),
                                              ],
                                            )
                                          )
                                            ],
                                          )
                                        ],
                                      ),
                                      new Image.asset("assets/images/Item_3.png",fit: BoxFit.fill,)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    )
                  ],
                ),
          ],
        )
      ),
    );
  }
}

/*

*/