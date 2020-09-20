import 'package:app_ebook_flutter/constants.dart';
import 'package:app_ebook_flutter/screens/details_screen.dart';
import 'package:app_ebook_flutter/widgets/book_rating.dart';
import 'package:app_ebook_flutter/widgets/reading_card_list.dart';
import 'package:app_ebook_flutter/widgets/two_size_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * .1,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: "O que você está \nlendo "),
                          TextSpan(
                            text: "hoje?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: "assets/images/book-1.png",
                          title: "Esmagamento & Influência",
                          auth: "Gary Venchuk",
                          rating: 4.9,
                          pressDetails: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context){
                                  return DetailsScreen();
                                }
                              )
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/book-2.png",
                          title: "Top Dez Negócios Hacks",
                          auth: "Herman Joel",
                          rating: 4.8,
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(text: "O melhor do "),
                              TextSpan(
                                text: "dia",
                                style: TextStyle(fontWeight: FontWeight.bold)
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "lendo...",
                                style: TextStyle(fontWeight: FontWeight.bold)
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84)
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(                                            
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Esmagamento & Influência",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              Text(
                                                "Gary Venchuk",
                                                style: TextStyle(
                                                  color: kLightBlackColor
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Text(
                                                  "Capítulo 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5)
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/images/book-1.png",
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        height: 215,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.only(left: 24, top: 24, right: size.width * .37),
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAEAEA).withOpacity(.45),
                                  borderRadius: BorderRadius.circular(29),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "O melhor da New York Times Por 11 de Março 2020",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: kLightBlackColor
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Como ganhar \nAmigos & Influência",
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                    Text(
                                      "Gary Venchuk",
                                      style: TextStyle(color: kLightBlackColor),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        BookRating(score: 4.9),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Text(
                                            "Culpa Lorem do enim consectetur officia nisi. Ut aute ea cillum ad reprehenderit ut veniam id. Qui ipsum nostrud ullamco elit commodo sint ut in labore tempor laborum. Anim mollit eu dolor pariatur duis ea et adipisicing sunt commodo cupidatat incididunt fugiat.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: kLightBlackColor
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Image.asset(
                                "assets/images/book-3.png",
                                width: size.width * .37,
                              )
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: SizedBox(
                                height: 40,
                                width: size.width * .3,
                                child: TwoSizeRoundedButton(
                                  text: "Ler",
                                  radious: 24,
                                  press: (){},
                                ),
                              )
                            )
                          ],
                        ),
                      );
  }
}

