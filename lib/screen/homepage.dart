

import 'package:chat_app/widget/grid_item.dart';
import 'package:chat_app/widget/lesson_item.dart';
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
                lessonItem(context),
                challanges(),
                //challengesItems(),
                challengesView(),
                lastChallenges(context),

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

  Widget lessonItem(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const LessonItem(title: 'Greetings');
          }

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
             shape: RoundedRectangleBorder(
               side: BorderSide(
                 color: Colors.deepOrangeAccent
               ),
               borderRadius: BorderRadius.circular(20.0)
             ),
             contentPadding: const EdgeInsets.all(5),
             leading: Icon(Icons.access_time_filled_rounded),

             title: const Text('10-days challenges'),
             onTap: () {},
             tileColor: Colors.blueGrey,
             style: ListTileStyle.drawer,)



           ),



         )
       );
        



  }
  Widget challengesView() {
    return Container(
      child: Column(
        children: [
          const Text("10-days challenge",
          style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
              },
              child: const Center(
                child: Text('join now',
                style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.deepOrangeAccent,
            ),

          ),
        ],
      ),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),


    );

  }
  Widget lastChallenges(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.green,
                          child: const CircleAvatar(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 5.0 ,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("10-days Challenge", style: TextStyle(color: Colors.black54, fontSize: 25,
                                fontWeight: FontWeight.bold),),
                            Text("immediate level", style: TextStyle(color: Colors.black,fontSize: 15),)

                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: FlatButton(
                        onPressed: () {},
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),),
                        child: const Text('Join now',
                          style: TextStyle(
                            color: Colors.white,),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }


}









