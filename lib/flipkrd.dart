import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Flipkrd extends StatefulWidget {
  const Flipkrd({super.key});

  @override
  State<Flipkrd> createState() => _FlipkrdState();
}

class _FlipkrdState extends State<Flipkrd> {
  bool status = false;
  int _currentIndex = 0;

  final List<String> _image = [
    'assets/images (7).jpg',
    'assets/images (5).jpg',
    'assets/images (2).jpg',
    'assets/download (2).jpg',
    'assets/images (3).jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leadingWidth: 100,
        toolbarHeight: 50,
        leading: Image(image: AssetImage("assets/flip-removebg-preview.png")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Brand Mall",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      child: FlutterSwitch(
                        width: 50.0,
                        height: 25,
                        valueFontSize: 10,
                        toggleSize: 20,
                        value: status,
                        borderRadius: 10.0,
                        padding: 8.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Container(
                    height: 45,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                        ),
                        prefixIconColor: Colors.black54,
                        suffixIcon: Icon(Icons.mic),
                        suffixIconColor: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 160.0,
                    // enlargeCenterPage: true,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: _image.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: 500,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _image.map((url) {
                    int index = _image.indexOf(url);
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.black54
                            : Colors.black12,
                      ),
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(3)),
                            width: 120,
                            height: 150,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/CHCKT.jpg'),
                                          fit: BoxFit.contain),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2)),
                                  width: 120,
                                  height: 100,
                                ),
                                Text(
                                  "  Ucb  shirt",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  " From ₹ 999",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(3)),
                        width: 120,
                        height: 150,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images.jpg'),
                                      fit: BoxFit.contain),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2)),
                              width: 120,
                              height: 100,
                            ),
                            Text(
                              "Tomy",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              " From ₹ 999",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(3)),
                        width: 120,
                        height: 150,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/nike2.png'),
                                      fit: BoxFit.contain),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2)),
                              width: 120,
                              height: 100,
                            ),
                            Text(
                              "Nike",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              " From ₹ 999",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 500,
                  color: Colors.green.shade200,
                  child: Column(
                    children: [
                      Row(crossAxisAlignment:CrossAxisAlignment.start ,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Suggested for You",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.indigo,
                              radius: 10,
                              child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 10),
                            ),
                          ),
                        ],

                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              width: 180,
                              height: 200,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/nikeshoe1.png'),
                                            fit: BoxFit.contain),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)),
                                    width: 200,
                                    height: 150,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 100),
                                    child: Text(
                                      "Nike air",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 63),
                                    child: Text(
                                      "Min. 50% Off",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              width: 180,
                              height: 200,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/download (3).jpg'),
                                            fit: BoxFit.contain),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)),
                                    width: 200,
                                    height: 150,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Text(
                                      "Iphone 15pro",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 63),
                                    child: Text(
                                      "Min. 25% Off",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              width: 180,
                              height: 200,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/download (5).jpg'),
                                            fit: BoxFit.contain),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)),
                                    width: 200,
                                    height: 150,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 100),
                                    child: Text(
                                      "Air pord",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 63),
                                    child: Text(
                                      "Min. 50% Off",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              width: 180,
                              height: 200,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/download (6).jpg'),
                                            fit: BoxFit.contain),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)),
                                    width: 200,
                                    height: 150,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Text(
                                      "Sumsung s22",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 63),
                                    child: Text(
                                      "Min. 25% Off",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),



                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
