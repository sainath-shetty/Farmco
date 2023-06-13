import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color:Colors.green,
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){},
                child: Text('',style: TextStyle(color: Colors.white,fontSize: 20,),),

              ),
              Padding(
                padding:const EdgeInsets.only(top:5.0,bottom:5.0),
                    child:Divider(
                      color: Colors.black26,
                      thickness: 2,
                    )
              ),
              InkWell(
                onTap: (){},
                child: Text('Home',style: TextStyle(color: Colors.white,fontSize: 20,),),

              ),
              Padding(
                  padding:const EdgeInsets.only(top:5.0,bottom:5.0),
                  child:Divider(
                    color: Colors.black26,
                    thickness: 2,
                  )
              ),
              InkWell(
                onTap: (){},
                child: Text('Category',style: TextStyle(color: Colors.white,fontSize: 20,),),

              ),
              Padding(
                  padding:const EdgeInsets.only(top:5.0,bottom:5.0),
                  child:Divider(
                    color: Colors.black26,
                    thickness: 2,
                  )
              ),
              InkWell(
                onTap: (){},
                child: Text('Filter',style: TextStyle(color: Colors.white,fontSize: 20,),),

              ),
              Padding(
                  padding:const EdgeInsets.only(top:5.0,bottom:5.0),
                  child:Divider(
                    color: Colors.black26,
                    thickness: 2,
                  )
              ),
              InkWell(
                onTap: (){},
                child: Text('Contact',style: TextStyle(color: Colors.white,fontSize: 20,),),

              ),
              Padding(
                  padding:const EdgeInsets.only(top:5.0,bottom:5.0),
                  child:Divider(
                    color: Colors.black26,
                    thickness: 2,
                  )
              ),
              Expanded(
                child:Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('designed by Sainath shetty',style:TextStyle(color:Colors.black26,fontSize: 14)),
                )
              )
            ],
          )

        )
      ),
    );
  }
}
