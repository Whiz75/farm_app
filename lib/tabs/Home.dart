import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../models/Customer.dart';
import 'dart:convert';

class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  Future<void> testApi() async {
    final url = Uri.parse('https://farm-web-api.herokuapp.com/api/Customers');
    Customer cust = new Customer(0, "thima", "MBOMBI", DateTime.now(),
        "tk@gmail.com", "123456789", "0111");
    var response = await http.post(url, body: cust);
    //var response = await http.get(url);

    final headers = {'content-type':'app/json'};
    final json = '{"title":"Thima", "body":"Kulane","id":7}';

    var response2 = await post(url, headers: headers,body: json);

    print('statuuuus: ${response2.statusCode}');
    print('body :${response2.body}');

    /*List<String> tags = ['tagA', 'tagB', 'tagC'];
    String jsonTags = jsonEncode(tags);
    print(jsonTags);*/

    //print('Statuss${jsonEncode(cust)}');
  }

  //Animal class object
  List<String> animals = ['Cows', 'Sheep', 'Chickens', 'Goats', 'Goats'];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        'Dashboard',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: GestureDetector(
        onTap: () {},
        child: const Icon(Icons.menu),
      ),
    );
  }

  Column buildBody() {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        search_box(),
        const SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                height: 160,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      height: 136,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.blue,
                        //box shadow here
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 160,
                        width: 200,
                        child: Image.asset('assets/images/bored.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),

                    //product title and price
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: SizedBox(
                        height: 136,
                        width: size.width - 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text('Angolan Goat'),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: const BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(22),
                                    bottomRight: Radius.circular(22)),
                              ),
                              child: const Text(
                                'R1200',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),

                            MaterialButton(
                              onPressed: () {
                                testApi();
                              },
                              child: Text('test'),
                            ),
                            //APi test
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  //search box
  Container search_box() {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
            icon: Icon(Icons.search_rounded),
            hintText: 'search',
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }

  //bottom sheet
  void bottomSheet(String item) {
    showModalBottomSheet(
      context: context,
      elevation: 5.0,
      builder: (context) {
        return Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                )),
            alignment: Alignment.center,
            child: ListView(
              shrinkWrap: true,
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              children: [
                ElevatedButton(
                  child: Text(item),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
      },
    );
  }
}
