

import 'package:chat_app/widget/grid_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Icon(Icons.menu),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                greeting(),
                categoryItems(context),
                lesson(),
                list(context),
                challanges(),
                challengesItems(),

              ],
            ),
          )),
    );
  }

  Widget greeting() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hi John', style: const TextStyle(fontSize: 32),),
          Text('You have completed\n6 lessons this week',
            style: const TextStyle(fontSize: 14),),
        ],
      ),

    );
  }

  Widget categoryItems(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: GridView.builder(
        primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return const GridItem(
              title:  'Listening', icon: Icon(Icons.headphones_rounded, color: Colors.green,)
            );

          }
      ),
    );
  }

  Widget lesson() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today\'s Lesson', style: const TextStyle(fontSize: 20),),
          ]
      ),
    );
  }

  Widget list(BuildContext context) {
    return Container(
        height: 200,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              Container(
                height: 100,
                width: 300,
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text("List $index"),

                ),
                color: Colors.deepPurpleAccent[700],
              ),
        ));
  }

  Widget challanges() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Challenges', style: TextStyle(fontSize: 20),),
        ],
      )

    );
  }
  Widget challengesItems(){
    return Container(

       child: ListView.builder(
         itemCount: 10,
         physics: NeverScrollableScrollPhysics(),
         shrinkWrap: true,
         itemBuilder: (context,index) => Padding(
           padding: const EdgeInsets.all(2.0),
           child: ListTile(
             title: const Text('10-days challenges'),
             tileColor: Colors.blueGrey,
             style: ListTileStyle.drawer,)

           ),



         )
       );
        



  }






}









