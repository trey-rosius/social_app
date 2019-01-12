import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CommentsScreen extends StatefulWidget {
  CommentsScreen ({this.image});
  final String image;


  @override
  CommentsScreenState createState() {
    return new CommentsScreenState();
  }
}

class CommentsScreenState extends State<CommentsScreen> {




  Widget _buildComments() {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Container(
              height: 35.0,
              width: 35.0,

              decoration: new BoxDecoration(
                shape: BoxShape.circle,

                border: Border.all(color:Color(0xFFF1AF27)),
                // image: new Image.asset(_image.)
              ),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/a.jpeg')),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0.0,
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1.0),
                                    child: Text(
                                      'Rosius Ateh',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0,bottom: 8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "3 hours ago",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                              width: 280.0,
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Text('when you don\'t create things, you become defined by your tastes rather than ability. Your tastes only narrow & exclude people. so create' )),

                          Container(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,

                              children: <Widget>[
                                Row(

                                  children: <Widget>[
                                    Icon(Icons.favorite,color:const Color(0xFFF1AF27),),
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Text('500'),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Row(

                                    children: <Widget>[
                                      Icon(Icons.reply),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left:5.0),
                                        child: Container(
                                          height: 30.0,
                                          width: 30.0,

                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,

                                            border: Border.all(color:Color(0xFFF1AF27)),
                                            // image: new Image.asset(_image.)
                                          ),
                                          child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              backgroundImage: AssetImage('assets/images/a.jpeg')),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:20.0),
                                        child: Container(
                                          height: 30.0,
                                          width: 30.0,

                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,

                                            border: Border.all(color:Color(0xFFF1AF27)),
                                            // image: new Image.asset(_image.)
                                          ),
                                          child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              backgroundImage: AssetImage('assets/images/b.jpg')),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:35.0),
                                        child: Container(
                                          height: 30.0,
                                          width: 30.0,

                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,

                                            border: Border.all(color:Color(0xFFF1AF27)),
                                            // image: new Image.asset(_image.)
                                          ),
                                          child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              backgroundImage: AssetImage('assets/images/rosius.jpeg')),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:55.0),
                                        child: Container(
                                          height: 35.0,
                                          width: 35.0,

                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,

                                            border: Border.all(color:Color(0xFFF1AF27)),
                                            // image: new Image.asset(_image.)
                                          ),
                                          child: CircleAvatar(
                                              backgroundColor:Color(0xFFF1AF27),
                                              child: Text("200",style: TextStyle(color: Colors.white),),
                                             ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )


                              ],
                            ),
                          )

                        ],
                      )),
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }



  @override

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      child: CustomScrollView(
        slivers: <Widget>[


            SliverAppBar(

                 leading: GestureDetector(
                     onTap: (){
                       Navigator.pop(context);
                     },
                     child: Icon(CupertinoIcons.back)),


                  flexibleSpace:
                      FlexibleSpaceBar(


                        background:

                                 Image.asset('assets/images/fruity1.png', fit: BoxFit.cover)

                       ),


              // Extruding edge from the sliver appbar, may need to fix expanded height
              expandedHeight: MediaQuery.of(context).size.height / 2.5,
              backgroundColor: Color(0xFFF1AF27),




          ),

          SliverPadding(

              padding: EdgeInsets.only(left: 10.0),
              sliver: SliverList(

                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return _buildComments();
                    },
                    childCount: 12,
                  ))),


        ],
      ),
    );
  }
}
