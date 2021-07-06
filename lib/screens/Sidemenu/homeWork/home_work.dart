import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';


class HomeWork extends StatefulWidget {

  const HomeWork({Key key}) : super(key: key);

  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  final homeWork = List<String>.generate(5, (i) => 'Product $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Home Work'),
       backgroundColor: darkprimaryColor,
       
     ),
      body: ListView.builder(
        itemCount: homeWork.length,
        itemBuilder: (context,index){
          return Card(
            child: Column(
              children: [
                ListTile(
                  leading: Text('Mathematics'),

                  trailing:Container(
                    width:300,
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.upload_outlined)),
                        ElevatedButton(
                          onPressed: (){}, child: Row(
                          children: [
                            Icon(Icons.download_rounded),
                            Text('View')

                          ],
                        ),
                        ),


                      ],
                    ),
                  )
                  ),
                // Container(
                //   child:  ,
                // )



              ],
            ),
          );
        },
      ),
    );
  }
}
