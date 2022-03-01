import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  static final String id='HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem=[
    'assets/images/ic_apple1.jpg',
    'assets/images/ic_apple2.jpg',
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text('Apple Products', style: TextStyle(color: Colors.white, fontSize: 25),),
        leading: Icon(Icons.menu),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange
            ),
            child: Center(
              child: Text('7', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [


            //#head
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_apple1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),

              //#head elements
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Lifestyle sale', style: TextStyle(color: Colors.white, fontSize: 35),),
                    SizedBox(height: 20,),
                    Container(
                      height: 40,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 30,right: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text('Shop Now', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),

            //#body
            Expanded(
              child: ListView(
                children: _listItem.map((e) => _item(e)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(String item){
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(12),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 35,)
          ],
        ),
      ),
    );
  }
}
