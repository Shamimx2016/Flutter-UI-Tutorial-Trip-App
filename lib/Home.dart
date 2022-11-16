import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  late PageController _pageController;

  int totalPage = 4;

  void _onScroll() {}
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        _onScroll;
      });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makepage(
            Page: 1,
            Image: 'assets/images/one.jpg',
            Title: 'Tree',
          ),
          makepage(
            Page: 2,
            Image: 'assets/images/two.jpg',
            Title: 'bridge',
          ),
          makepage(
            Page: 3,
            Image: 'assets/images/three.jpg',
            Title: 'Hill',
          ),
          makepage(
            Page: 4,
            Image: 'assets/images/four.jpg',
            Title: 'Tiger',
          )
        ],
      ),
    );
  }

  Widget makepage({Image, Title, Page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    Page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Text(
                          '4.4',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          '(2300)',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        "The Carbon Neutrality Challenge is an initiative to mitigate climate change, in which individuals estimate their CO2 footprint and then plant enough trees to offset it. Thousands of trees have been planted by volunteers in Hawaii who took the Carbon Neutrality Challenge",
                        style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            height: 1.9,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "READ MORE",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
