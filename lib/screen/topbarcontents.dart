import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({Key? key}) : super(key: key);

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}
TextEditingController search=TextEditingController();
class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(

      color: Colors.white.withOpacity(0.5),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: screenSize.width / 10),
              Text(
                'Farmco',
                style: TextStyle(
                  color: Color(0xff07d70a),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(width:screenSize.width/10),
              InkWell(
                onHover: (value){
                  setState(() {
                    value
                    ? _isHovering[0]=true
                    :_isHovering[0]=false;
                  });
                },
                onTap: (){},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Home',
                      style:TextStyle(
                        color:_isHovering[0]
                        ? Color(0xff4ac24e)
                            :Color(0xff4ac24e),
                        fontSize: 20,
                      )
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.green,
                      ),
                    )
                  ],
                ) ,
              ),
              SizedBox(width:screenSize.width/10),
              InkWell(
                onHover: (value){
                  setState(() {
                    value
                        ? _isHovering[1]=true
                        :_isHovering[1]=false;
                  });
                },
                onTap: (){},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        'Category',
                        style:TextStyle(
                          color:_isHovering[1]
                              ? Color(0xff4ac24e)
                              :Color(0xff4ac24e),
                          fontSize: 20,
                        )
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.green,
                      ),
                    )
                  ],
                ) ,
              ),
              SizedBox(width:screenSize.width/10),
              InkWell(
                onHover: (value){
                  setState(() {
                    value
                        ? _isHovering[2]=true
                        :_isHovering[2]=false;
                  });
                },
                onTap: (){},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        'Filter',
                        style:TextStyle(
                          color:_isHovering[2]
                              ? Color(0xff4ac24e)
                              :Color(0xff4ac24e),
                          fontSize: 20,
                        )
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.green,
                      ),
                    )
                  ],
                ) ,
              ),
              SizedBox(width:screenSize.width/10),
              InkWell(
                onHover: (value){
                  setState(() {
                    value
                        ? _isHovering[3]=true
                        :_isHovering[3]=false;
                  });
                },
                onTap: (){},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        'Contact',
                        style:TextStyle(
                          color:_isHovering[3]
                              ? Color(0xff4ac24e)
                              :Color(0xff4ac24e),
                          fontSize: 20,
                        )
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.green,
                      ),
                    )
                  ],
                ) ,
              ),
              SizedBox(width:screenSize.width/17),
             Expanded(

               child: Container(

               width: 60,
               height: 40,
               decoration:BoxDecoration(
                   color: Colors.green,borderRadius: BorderRadius.circular(5)
               ),
               child: Center(

                 child: TextField(
                    controller: search,
                   decoration: InputDecoration(
                       prefixIcon: const Icon(Icons.search,color: Colors.white,),
                       suffixIcon: IconButton(
                         icon: const Icon(Icons.clear),
                         onPressed: (){
                        search.clear();
                         },
                         color: Colors.white,
                       ),
                       hintText: 'Search....',
                     hintStyle: TextStyle( color: Colors.white),
                   ),
                 ),
               ),
             ),



             )
            ],
          ),
        ),
      ),
    );
  }
}
