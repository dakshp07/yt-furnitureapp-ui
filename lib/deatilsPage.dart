import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: new Row(
          children: [
            new IconButton(icon: new SvgPicture.asset("assets/icons/back.svg"), onPressed: (){
            Navigator.pop(context);
          }),
          ],
        ),
        actions: [
          new IconButton(icon: new SvgPicture.asset("assets/icons/cart_with_item.svg"), onPressed: (){}),
        ],
        title: new Text("BACK",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black)),
      ),
      backgroundColor: Colors.blue[800],
      body: new Column(
        children: [
          new Container(
        height: 550,
        width: 720,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            bottomRight: new Radius.circular(25),
            bottomLeft: new Radius.circular(25)
          )
        ),
        child: new Column(
          children: [
            new Image.asset("assets/images/Item_2.png",height: 250,fit: BoxFit.fitHeight,),
            new Padding(padding: const EdgeInsets.only(top: 30)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new CircleAvatar(
                  backgroundColor: Colors.grey[600],
                  radius: 14,
                ),
                new CircleAvatar(
                  backgroundColor: Colors.red[600],
                  radius: 14,
                ),
                new CircleAvatar(
                  backgroundColor: Colors.blue[600],
                  radius: 14,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 30)),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Padding(padding: const EdgeInsets.symmetric(horizontal: 20)),
                    new Text("Poppy Plastic",style: GoogleFonts.poppins(fontSize: 22,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                  ],
                ),
              new Padding(padding: const EdgeInsets.only(top:4)),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                  new Text(" Tub Chair",style: GoogleFonts.poppins(fontSize: 22,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 30),),
            new Row(
              children: [
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20)),
                new Text("\$56",style: GoogleFonts.poppins(fontSize: 22,color: Colors.blue[800],fontWeight: FontWeight.bold))
              ],
            ),
            new Column(
              children: [
                new Container(
                  padding: const EdgeInsets.all(20),
                  child: new Text("lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum",style: GoogleFonts.poppins(fontSize: 18,color: Colors.grey[600])),
                )
              ],
            )
          ],
        ),
      ),
      new Padding(padding: const EdgeInsets.only(top: 40)),
      new Container(
        padding: const EdgeInsets.all(13),
        height: 50,
        width: 320,
        decoration: new BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(25))
        ),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
            new SvgPicture.asset("assets/icons/chat.svg",height: 18,),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 3),),
            new Text("Chat",style: GoogleFonts.poppins(fontSize: 18,color:Colors.white)),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 35),),
            new SvgPicture.asset("assets/icons/shopping-bag.svg",height: 18,),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 3),),
            new Text("Add to cart",style: GoogleFonts.poppins(fontSize: 18,color:Colors.white)),
          ],
        ),
      )
        ],
      )
    );
  }
}