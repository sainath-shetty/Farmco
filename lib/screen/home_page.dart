import 'package:farmco/screen/responsivewidget.dart';
import 'package:farmco/screen/searchpage.dart';
import 'package:farmco/screen/topbarcontents.dart';
import 'package:flutter/material.dart';

import 'menudrawer.dart';
class HomePage  extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
      appBar:ResponsiveWidget.isSmallScreen(context)?
      AppBar(
        iconTheme: IconThemeData(color:Color(0xff07d72a)),
        backgroundColor: Colors.white,
        elevation: 10,
        centerTitle: true,
        title: Text("Farmco",style: TextStyle(
          fontSize: 26,
          color: Colors.green,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          IconButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchPage())), icon: const Icon(Icons.search))
        ],
      ):PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child:TopBarContents(),
      ),
      drawer: MenuDrawer(),
      body:Center(
        child: Image.asset('images/farm-removebg-preview.png'),
      )
    );
  }
}
