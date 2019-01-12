import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/model/storiesmodel.dart';


class ColorScreen extends StatefulWidget {
  ColorScreen({this.color,this.name});
  final String name;
  final Color color;


  @override
  ColorScreenState createState() {
    return new ColorScreenState();
  }
}

class ColorScreenState extends State<ColorScreen> {




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

                border: Border.all(color:const Color(0xFFF1AF27)),
                // image: new Image.asset(_image.)
              ),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/rosius.jpeg')),
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
                              child: Text('PaPa John\'s Pizza with a slice of lemon, multiple olives and extra cheese' )),

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
                                      Padding(
                                        padding: const EdgeInsets.only(left:8.0),
                                        child: Text('200'),
                                      )
                                    ],
                                  ),
                                ),


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

  Widget _buildFruitCategory(context,index, List<FruitsCategory>listFruits) {


    return
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => ColorScreen(color:listFruits[index].color,name:listFruits[index].name)),
          );
        },
        child: Card(
          color: listFruits[index].color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(


                padding: const EdgeInsets.all(10.0),

                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(listFruits[index].name,style: TextStyle(fontSize: 20.0,color: Colors.white,fontFamily: 'Montserrat-Regular'),),


                  ],
                )
            ),
          ),
          shape:
          new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(7.0)




          ),
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

               centerTitle: true,
                background:

                Stack(
                  children: <Widget>[


                    Container(
                      color: widget.color,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:50.0),
                        child: Container(
                          child: Text(widget.name,style: TextStyle(fontSize: 50.0,color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                )

            ),


            // Extruding edge from the sliver appbar, may need to fix expanded height
            expandedHeight: MediaQuery.of(context).size.height / 2.5,
            backgroundColor: widget.color,




          ),

          SliverPadding(

              padding: EdgeInsets.only(left: 2.0),
              sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return _buildFruitCategory(context, index, storiesList.fruitsCategory);
                    },
                    childCount: 7,
                  ))),


        ],
      ),
    );
  }
}
