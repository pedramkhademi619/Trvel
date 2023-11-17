import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'TravelModel/TravelModel.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedindex = 0;
  double imageSize = 55;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                width: double.infinity,
                height: size.height / 1.8,
                child: Stack(children: [
                  //back ground image
                  Container(
                    width: double.infinity,
                    height: size.height / 2.1,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(travelList[_selectedindex].image)),
                    ),
                  ),

                  //head icons
                  Positioned(
                    right: 0,
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(134, 240, 238, 234),
                                shape: BoxShape.circle),
                            child: const Icon(CupertinoIcons.chevron_left),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(134, 240, 238, 234),
                                shape: BoxShape.circle),
                            child: const Icon(CupertinoIcons.heart),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //image list
                  Positioned(
                    right: 0,
                    top: 80,
                    child: SizedBox(
                      height: double.maxFinite,
                      width: 90,
                      child: ListView.builder(
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          return imageItem(index);
                        },
                      ),
                    ),
                  ),

                  //name & place
                  Positioned(
                    bottom: 80,
                    left: size.width / 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travelList[_selectedindex].name,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.placemark_fill,
                              color: Colors.white,
                            ),
                            Text(
                              travelList[_selectedindex].location,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                  color: Color.fromARGB(60, 0, 0, 0),
                                  width: 2)),
                          child: Container(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Distance"),
                                Text(travelList[_selectedindex].distance + "KM")
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                  color: Color.fromARGB(60, 0, 0, 0),
                                  width: 2)),
                          child: Container(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Temp"),
                                Text(travelList[_selectedindex].temp + "° C")
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                  color: Color.fromARGB(60, 0, 0, 0),
                                  width: 2)),
                          child: Container(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Rating"),
                                Text(travelList[_selectedindex].rating)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Description"),
                          ExpandableText(
                            "${travelList[_selectedindex].description}kseuifhsifhweauifgajfgsdajfgsda\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\njfgdsjfgdhf djghdfjkghdfkjgh   dfsdfsfsd\n\n\n\fsdfsdfsdfsdf\n\n\n\ngdjgfjhfgjhfgjhfgdfgjdghjdgfjhfgKDFGDKJFGDAGJGAJSFGADSJSJSJSJSJSJSJFGASDJFHGAJafkjfgajkfgajghkfgasdkjgkkkk\nkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk\n hgggggggggggg",
                            expandText: "Read more",
                            collapseText: "Collapse",
                            maxLines: 1,
                            linkColor: Colors.blue,
                            textDirection: TextDirection.ltr,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Total Price"),
                                  Text(
                                    "${travelList[_selectedindex].price}\$",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                              Container(
                                height: 75,
                                width: 75,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                                child: const Icon(
                                  CupertinoIcons.chevron_right,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedindex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(_selectedindex == index ? 50 : 10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(travelList[index].image)),
                  border: Border.all(
                      width: 3,
                      color: _selectedindex == index
                          ? Colors.amber
                          : Colors.white)),
              width: _selectedindex == index ? imageSize + 15 : imageSize,
              height: _selectedindex == index ? imageSize + 15 : imageSize,
              duration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}
