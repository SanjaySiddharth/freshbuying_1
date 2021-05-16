import 'package:flutter/material.dart';
import 'dart:ui';

final List<String> entries = <String>[
  'Water Melon',
  'Musk Melon',
  'Coconuts',
  'Kiwi',
  'Star Fruit',
  'Wild Berries',
  'Blue Berries',
  'Guavas',
];
final List<int> prices = <int>[
  50,
  109,
  75,
  355,
  420,
  240,
  600,
  120,
];
final List<int> qty = <int>[
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
];
int sum = 0;
Map<String, int> finalList = {
  'Water Melon': 0,
  'Musk Melon': 0,
  'Coconuts': 0,
  'Kiwi': 0,
  'Star Fruit': 0,
  'Wild Berries': 0,
  'Blue Berries': 0,
  'Guavas': 0,
};

class Freshcard extends StatefulWidget {
  const Freshcard({
    Key key,
    @required this.size,
    this.itemName,
    this.itemPrice,
    this.itemQuantity,
  }) : super(key: key);

  final Size size;
  final num itemPrice;
  final String itemName;
  final int itemQuantity;

  @override
  _FreshcardState createState() => _FreshcardState();
}

class _FreshcardState extends State<Freshcard> {
  int itemQuantity = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 16,
          sigmaY: 0.0,
        ),
        child: Container(
          height: widget.size.height * 0.13,
          width: widget.size.width,
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Color(0xFF21BFBD).withOpacity(0.2),
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  top: 15.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.itemName}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        ' \u20B9 ${widget.itemPrice} per kg',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            itemQuantity = itemQuantity - 1;
                            sum = sum - widget.itemPrice;
                            print(sum);
                            String name = widget.itemName;
                            switch (name) {
                              case "Water Melon":
                                {
                                  finalList.update(name, (value) => --value);
                                  print(finalList);
                                }
                                break;

                              case "Musk Melon":
                                {
                                  finalList.update(name, (value) => --value);
                                  print(finalList);
                                }
                                break;

                              case "Coconuts":
                                {
                                  finalList.update(name, (value) => --value);
                                  print(finalList);
                                }
                                break;

                              case "Kiwi":
                                {
                                  finalList.update(name, (value) => --value);
                                  print(finalList);
                                }
                                break;
                              case "Star Fruit":
                                {
                                  finalList.update(name, (value) => --value);
                                  print(finalList);
                                }
                                break;

                              case "Wild Berries":
                                {
                                  finalList.update(name, (value) => --value);
                                  print(finalList);
                                }
                                break;
                              case "Guavas":
                                {
                                  finalList.update(name, (value) => --value);
                                  print(finalList);
                                }
                                break;

                              case "Blue Berries":
                                {
                                  finalList.update(name, (value) => --value);
                                  print(finalList);
                                }
                                break;
                            }
                          });
                        },
                      ),
                      Text(
                        '$itemQuantity',
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            itemQuantity = itemQuantity + 1;
                            sum = sum + widget.itemPrice;
                            print(sum);
                            print(itemQuantity);
                            String name = widget.itemName;
                            switch (name) {
                              case "Water Melon":
                                {
                                  finalList.update(name, (value) => ++value);
                                  print(finalList);
                                }
                                break;

                              case "Musk Melon":
                                {
                                  finalList.update(name, (value) => ++value);
                                  print(finalList);
                                }
                                break;

                              case "Coconuts":
                                {
                                  finalList.update(name, (value) => ++value);
                                  print(finalList);
                                }
                                break;

                              case "Kiwi":
                                {
                                  finalList.update(name, (value) => ++value);
                                  print(finalList);
                                }
                                break;
                              case "Star Fruit":
                                {
                                  finalList.update(name, (value) => ++value);
                                  print(finalList);
                                }
                                break;

                              case "Wild Berries":
                                {
                                  finalList.update(name, (value) => ++value);
                                  print(finalList);
                                }
                                break;
                              case "Guavas":
                                {
                                  finalList.update(name, (value) => ++value);
                                  print(finalList);
                                }
                                break;

                              case "Blue Berries":
                                {
                                  finalList.update(name, (value) => ++value);
                                  print(finalList);
                                }
                                break;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
