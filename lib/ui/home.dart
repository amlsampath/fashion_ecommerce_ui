import 'package:cloths_ecommerce/data/model/style_model.dart';
import 'package:cloths_ecommerce/ui/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<String> _categories = [
    'All',
    'Winter',
    'Eyeware',
    'Mens',
    'Womens',
    'Baby'
  ];
  final List<StyleModel> _popularList = [
    StyleModel(
      colors: [
        const Color.fromARGB(255, 98, 96, 96),
        const Color.fromARGB(255, 245, 208, 154),
        const Color.fromARGB(255, 240, 166, 160),
        const Color.fromARGB(255, 163, 232, 165),
        const Color.fromARGB(255, 239, 146, 217),
        const Color.fromARGB(255, 115, 86, 221),
        const Color.fromARGB(255, 168, 139, 237),
        const Color.fromARGB(255, 238, 197, 130),
      ],
      price: '330',
      sizes: ['S', 'M', 'XXL', 'L'],
      title: 'Kimono dress',
      image:
          'https://images.pexels.com/photos/1462637/pexels-photo-1462637.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
    StyleModel(
      colors: [Colors.black, Colors.orange, Colors.red, Colors.green],
      price: '450',
      sizes: ['S', 'M', 'XXL', 'L'],
      title: 'sweaters Loce',
      image:
          'https://images.pexels.com/photos/1852382/pexels-photo-1852382.jpeg?auto=compress&cs=tinysrgb&w=400',
    ),
    StyleModel(
      colors: [Colors.black, Colors.orange, Colors.red, Colors.green],
      price: '150',
      sizes: ['S', 'M', 'XXL', 'L'],
      title: 'Beach Crochet Loce',
      image:
          'https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
    StyleModel(
      colors: [Colors.black, Colors.orange, Colors.red, Colors.green],
      price: '220',
      sizes: ['S', 'M', 'XXL', 'L'],
      title: 'Casual Jeans',
      image:
          'https://images.pexels.com/photos/2901680/pexels-photo-2901680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
  ];

  final List<StyleModel> _styleList = [
    StyleModel(
      colors: [Colors.black, Colors.orange, Colors.red, Colors.green],
      price: '150',
      sizes: ['S', 'M', 'XXL', 'L'],
      title: 'Beach Crochet Loce',
      image:
          'https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
    StyleModel(
      colors: [Colors.black, Colors.orange, Colors.red, Colors.green],
      price: '220',
      sizes: ['S', 'M', 'XXL', 'L'],
      title: 'Casual Jeans',
      image:
          'https://images.pexels.com/photos/2901680/pexels-photo-2901680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
    StyleModel(
      colors: [Colors.black, Colors.orange, Colors.red, Colors.green],
      price: '330',
      sizes: ['S', 'M', 'XXL', 'L'],
      title: 'Kimono dress',
      image:
          'https://images.pexels.com/photos/1462637/pexels-photo-1462637.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
    StyleModel(
      colors: [Colors.black, Colors.orange, Colors.red, Colors.green],
      price: '450',
      sizes: ['S', 'M', 'XXL', 'L'],
      title: 'sweaters Loce',
      image:
          'https://images.pexels.com/photos/1852382/pexels-photo-1852382.jpeg?auto=compress&cs=tinysrgb&w=400',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width * .05,
                right: size.width * .05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/menu.png',
                    width: size.width * .1,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.search),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      const Icon(Icons.shopping_cart),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width * .05,
                right: size.width * .05,
              ),
              child: Text(
                'Find your style',
                style: TextStyle(
                  fontSize: size.height * .04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            SizedBox(
              height: size.height * .06,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: ((context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Container(
                          width: size.width * .2,
                          margin: const EdgeInsets.only(
                            left: 10,
                            bottom: 5,
                            top: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: _currentIndex == index
                                  ? Colors.black
                                  : Colors.white,
                              border: Border.all(
                                color: _currentIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                width: _currentIndex == index ? 0 : 1,
                              )),
                          child: Center(
                              child: Text(
                            _categories[index],
                            style: TextStyle(
                              color: _currentIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )),
                        ),
                      ))),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Container(
                margin: EdgeInsets.only(
                  left: size.width * .02,
                ),
                height: size.height * .42,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _styleList.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    styleModel: _styleList[index],
                                  )),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          right: size.width * .05,
                        ),
                        width: size.width * .6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  child: Image.network(
                                    width: size.width * .6,
                                    height: size.height * .35,
                                    _styleList[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                        margin: const EdgeInsets.all(
                                          10.0,
                                        ),
                                        child:
                                            const Icon(Icons.favorite_border))),
                              ],
                            ),
                            Text(_styleList[index].title),
                            Text(
                              String.fromCharCodes(new Runes('\u0024')) +
                                  " " +
                                  _styleList[index].price,
                              style: const TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                )),
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width * .05,
                right: size.width * .05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
                    style: TextStyle(
                      fontSize: size.height * .03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'See all',
                    style: const TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              margin: EdgeInsets.only(
                  left: size.width * .05, right: size.width * .05),
              child: Center(
                child: GridView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: _popularList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    styleModel: _styleList[index],
                                  )),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          right: size.width * .05,
                        ),
                        width: size.width * .45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  child: Image.network(
                                    width: size.width * .45,
                                    height: size.height * .25,
                                    _popularList[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                        margin: const EdgeInsets.all(
                                          10.0,
                                        ),
                                        child:
                                            const Icon(Icons.favorite_border))),
                              ],
                            ),
                            Text(_popularList[index].title),
                            Text(
                              String.fromCharCodes(new Runes('\u0024')) +
                                  " " +
                                  _popularList[index].price,
                              style: const TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
