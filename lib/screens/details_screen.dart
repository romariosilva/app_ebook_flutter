import 'package:app_ebook_flutter/constants.dart';
import 'package:app_ebook_flutter/widgets/book_rating.dart';
import 'package:app_ebook_flutter/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * .1),
                        BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .5 - 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: "Dinheiro",
                        chapterNumber: 1,
                        tag: "Vida é sobre mudança",
                        press: (){},
                      ),
                      ChapterCard(
                        name: "Poder",
                        chapterNumber: 2,
                        tag: "Todo mundo ama poder",
                        press: (){},
                      ),
                      ChapterCard(
                        name: "Influência",
                        chapterNumber: 3,
                        tag: "Influencie como nunca antes",
                        press: (){},
                      ),
                      ChapterCard(
                        name: "Vencer",
                        chapterNumber: 4,
                        tag: "Vencendo é o que importa",
                        press: (){},
                      ),
                      SizedBox(height: 10)
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: [
                        TextSpan(
                          text: "Você também pode ",
                        ),
                        TextSpan(
                          text: "gostar...",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.only(left: 24, top: 24, right: 150),
                          height: 180,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text: "Como Ganhar \nAmigos & Influência \n",
                                      style: TextStyle(
                                        fontSize: 20
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Gary Venchuk",
                                      style: TextStyle(color: kLightBlackColor)
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  BookRating(
                                    score: 4.9,
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: RoudendButton(
                                      text: "Ler",
                                      verticalPadding: 10,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/book-3.png",
                          width: 150,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {

  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;

  const ChapterCard({
    Key key,
    this.name, 
    this.tag, 
    this.chapterNumber,
    this.press
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84)
          )
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Capítulo $chapterNumber : $name \n",
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(color: kLightBlackColor)
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              size: 18,
            ),
            onPressed: press
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Esmagamento &",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Influência",
                style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(
                          fontWeight: FontWeight.bold
                        ),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Aliqua esse incididunt ullamco veniam ipsum incididunt occaecat occaecat ex. Anim duis mollit reprehenderit laborum consectetur nisi laboris. Enim mollit minim qui consectetur est nisi nostrud occaecat nostrud laboris cupidatat exercitation ut. Est proident officia irure duis magna eu nostrud dolore amet mollit excepteur id velit ut. Dolore velit ex laboris voluptate nostrud aliquip laborum cupidatat enim enim adipisicing. Aliquip laboris elit adipisicing ullamco nostrud id amet in laborum.",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor
                          ),
                        ),
                        SizedBox(height: 5),
                        RoudendButton(
                          text: "Ler",
                          verticalPadding: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border), 
                        onPressed: (){}
                      ),
                      BookRating(
                        score: 4.9,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/book-1.png",
          height: 170,
        )
      ],
    );
  }
}