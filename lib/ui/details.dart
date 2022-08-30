import 'package:cloths_ecommerce/data/model/style_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatefulWidget {
  StyleModel styleModel;
  Details({required this.styleModel, Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(
            size.width * .05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.styleModel.title),
                    Text(
                      String.fromCharCodes(new Runes('\u0024')) +
                          " " +
                          widget.styleModel.price,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
                child: Image.network(
                  widget.styleModel.image,
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.height * .5,
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Size',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Container(
                    height: size.height * .06,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.styleModel.sizes.length,
                        itemBuilder: ((context, index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedColorIndex = index;
                                });
                              },
                              child: Container(
                                width: size.width * .1,
                                margin: const EdgeInsets.only(
                                  left: 10,
                                  bottom: 5,
                                  top: 5,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                    color: _selectedColorIndex == index
                                        ? Colors.orange
                                        : Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width:
                                          _selectedColorIndex == index ? 0 : 1,
                                    )),
                                child: Center(
                                    child: Text(
                                  widget.styleModel.sizes[index],
                                  style: TextStyle(
                                    color: _selectedColorIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            ))),
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Text(
                    'Select Color',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Container(
                    height: size.height * .06,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.styleModel.colors.length,
                        itemBuilder: ((context, index) => GestureDetector(
                              onTap: () {
                                _selectedColorIndex = index;
                              },
                              child: Container(
                                width: size.width * .1,
                                margin: const EdgeInsets.only(
                                  left: 10,
                                  bottom: 5,
                                  top: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  color: widget.styleModel.colors[index],
                                ),
                              ),
                            ))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.all(
          10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              String.fromCharCodes(new Runes('\u0024')) +
                  " " +
                  widget.styleModel.price,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: size.width * .4,
              padding: EdgeInsets.only(
                left: 15.0,
                right: 15,
                top: 8,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                    20.0,
                  )),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
