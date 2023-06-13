import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {

  @override
  State<SearchPage> createState() => _SearchPageState();
}
TextEditingController search=TextEditingController();

class _SearchPageState extends State<SearchPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Container(
          width: double.infinity,
          height: 40,
          decoration:BoxDecoration(
            color: Colors.white,borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,color: Colors.green,),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: (){
                    search.clear();
                  },
                  color: Colors.green,
                ),
                hintText: 'Search....'
              ),
            ),
          ),
        )
      ),
    );
  }
}
