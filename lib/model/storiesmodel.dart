import 'dart:ui';

class Stories{
  final String name;
  final String profilePic;

  Stories({this.name, this.profilePic});



}
class FruitsCategory{
  final String name;
  final Color color;

  FruitsCategory({this.name, this.color});


}


class StoriesList{

  final List<Stories>storiesList;
  final List<FruitsCategory>fruitsCategory;
  StoriesList({this.storiesList,this.fruitsCategory});


}

final StoriesList storiesList = new StoriesList(
  storiesList: [
    Stories(
      name: "Trey Rosius",
      profilePic: "assets/images/rosius.jpeg"

    ),
    Stories(
        name: "Rosalina Castaldi",
        profilePic: "assets/images/a.jpeg"

    ),
    Stories(
        name: "Nakisha Tiano",
        profilePic: "assets/images/b.jpg"

    ),
    Stories(
        name: "Janey Eudy",
        profilePic: "assets/images/c.jpeg"

    ),
    Stories(
        name: "Vivien Lietz",
        profilePic: "assets/images/d.jpeg"

    ),
    Stories(
        name: "Jeanine Chiarello",
        profilePic: "assets/images/a.jpeg"

    ),
    Stories(
        name: "Lera Bohman",
        profilePic: "assets/images/d.jpeg"

    )
  ],
    fruitsCategory: [
      FruitsCategory(
          name: "Java",
          color:  Color(0xFFF1AF27)


      ),
      FruitsCategory(
          name: "React",
          color:  Color(0xFFEF5964)


      ),
      FruitsCategory(
          name: "Ruby On Rails",
          color:  Color(0xFFDCB4E7)


      ),
      FruitsCategory(
          name: "Vue",
          color:  Color(0xFF8943A1)


      ),

      FruitsCategory(
          name: "Scala",
          color:  Color(0xFFFF7350)


      ),
      FruitsCategory(
          name: "Sass",
          color:  Color(0xFF1478B2)


      ),
      FruitsCategory(
          name: "Html",
          color:  Color(0xFFBD4982)


      ),
]
);

