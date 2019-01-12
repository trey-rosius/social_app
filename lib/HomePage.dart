import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/CommentsScreen.dart';
import 'package:food/colorscreen.dart';
import 'package:food/model/storiesmodel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  final searchController = TextEditingController();
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
                    Text(listFruits[index].name,style: TextStyle(fontSize: 24.0,color: Colors.white,fontFamily: 'Montserrat-Regular'),),


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

  Widget _buildStories(
      BuildContext context, int index, StoriesList storiesList) {
    return Card(
      elevation: 0.0,
      child: new Column(
        children: <Widget>[
          new Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,

                    border: Border.all(color: const Color(0xFFF1AF27),width: 2.0),
                    // image: new Image.asset(_image.)
                  ),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage(storiesList.storiesList[index].profilePic)),
                ),
              ),
              index == 0
                  ? Positioned(
                      right: 10.0,
                      top: 10.0,
                      child: new FractionalTranslation(
                        translation: Offset(0.2, -0.2),
                        child: new CircleAvatar(
                          backgroundColor: Color(0xff3b5998),
                          radius: 15.0,
                          child: new Icon(
                            Icons.add,
                            size: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ))
                  : new Container(),
              index != 0
                  ? Positioned(
                      right: 10.0,
                      top: 10.0,
                      child: new FractionalTranslation(
                        translation: Offset(0.2, 1.2),
                        child: new CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15.0,
                          child: new Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    storiesList.storiesList[index].profilePic),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : new Container()
            ],
          ),
          Flexible(

            child: Container(
              width: 90.0,
              child: Text(
                storiesList.storiesList[index].name,
                overflow: TextOverflow.ellipsis,

                style: TextStyle(fontSize: 14.0,fontFamily: 'Roboto',),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeed() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => CommentsScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,

                  border: Border.all(color: Colors.red),
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
                                  padding: const EdgeInsets.only(
                                      top: 5.0, bottom: 8.0),
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
                            child: Text(
                                'when you don\'t create things, you become defined by your tastes rather than ability. Your tastes only narrow & exclude people. so create')),
                        Container(
                          height: 190.0,
                          width: 280.0,
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),



                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage('assets/images/fruity1.png'))
                              // image: new Image.asset(_image.)
                              ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: const Color(0xFFF1AF27),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('1.2K'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.comment),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Text('3.2K'),
                                    )
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
                                        height: 35.0,
                                        width: 35.0,

                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,

                                          border: Border.all(color:Color(0xFFF1AF27)),
                                          // image: new Image.asset(_image.)
                                        ),
                                        child: CircleAvatar(
                                          backgroundColor:Color(0xFFF1AF27),
                                          child: Text("1.2K",style: TextStyle(color: Colors.white),),
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
      ),
    );
  }

  Widget _buildFoodCategory() {
    return Card(
      color: const Color(0xFFF1AF27),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.local_pizza,
                    color: Color(0xFFF1AF27),
                    size: 30.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Pizza',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "12",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
      ),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(70.0)),
    );
  }

  Widget _buildFruitCategory1() {
    return Card(
      color: Color(0xFFFF5F5F5),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Color(0xFFF1AF27),
                  child: Icon(
                    Icons.fastfood,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Burgers',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "23",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
      ),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(70.0)),
    );
  }

  Widget _buildFruitCategory2() {
    return Card(
      color: Color(0xFFFF5F5F5),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Color(0xFFF1AF27),
                  child: Icon(
                    Icons.restaurant,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Meals',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "30",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
      ),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(70.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text(
            'TIMELINE',
            style: TextStyle(
              fontFamily: 'Montserrat-SemiBold',

            ),
          ),
          leading: Icon(CupertinoIcons.home),
          trailing: CircleAvatar(
            radius: 15.0,
            backgroundImage: AssetImage('assets/images/rosius.jpeg'),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(left: 10.0),
            height: 120.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return _buildStories(context, index, storiesList);
                }),
          ),
        ),

        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(left: 10.0),
            height: 160.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return _buildFruitCategory(context,index,storiesList.fruitsCategory);
                }),
          ),
        ),
        /*
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(left: 60.0, top: 20.0),
            height: 200.0,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildFoodCategory(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildFruitCategory1(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildFruitCategory2(),
                )
              ],
            ),
          ),
        ),
        */
        SliverPadding(
            padding: EdgeInsets.only(left: 10.0),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildFeed();
              },
              childCount: 3,
            ))),
      ],
    ));
  }
}
