import 'package:flutter/material.dart';
import 'package:newproject1/assamgent_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailsPage(),
    );
  }
}

class FirstWidget extends StatelessWidget {
  FirstWidget({super.key});

  List<Map<dynamic, dynamic>> meal = [
    {
      "imageUrl":
          "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVhbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "name": "fish",
      "contents": [
        {
          "name": "big",
          "price": "50",
        },
        {
          "name": "small",
          "price": "25",
        },
      ]
    },
    {
      "imageUrl":
          "https://images.unsplash.com/photo-1600289031464-74d374b64991?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2875&q=80",
      "name": "Egg",
      "contents": [
        {
          "name": "big",
          "price": "25",
        },
        {
          "name": "small",
          "price": "10",
        },
      ]
    },
    {
      "imageUrl":
          "https://images.unsplash.com/photo-1564671165093-20688ff1fffa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bWVhbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "name": "Rice",
      "contents": [
        {
          "name": "big",
          "price": "25",
        },
        {
          "name": "small",
          "price": "10",
        },
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: meal.map((e) {
          return MaelWidget(
              imageUrl: e['imageUrl'],
              name: e["name"],
              contents: e["contents"]);
        }).toList()),
      ),
    );
  }
}

class Meal {
  String? imageUrl;
  String? name;
  Content? content;

  Meal(Map map) {
    this.imageUrl = map['imageUrl'];
    this.name = map['name'];
    List contentMap = map['content'];

    contentMap.map((e) {});
  }
}

class Content {
  String? name;
  String? price;

  Content(Map map) {
    this.name = map['name'];
    this.price = map['price'];
  }
}

class MaelWidget extends StatelessWidget {
  String imageUrl;
  String name;
  List<Map> contents;

  MaelWidget(
      {required this.imageUrl, required this.name, required this.contents});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsetsDirectional.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), border: Border.all()),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.network(imageUrl)),
            ),
            Text(name),
            Row(
              children: [
                Text(contents[0]['name']),
                Spacer(),
                Text(contents[0]['price']),
              ],
            ),
            Row(
              children: [
                Text(contents[1]['name']),
                Spacer(),
                Text(contents[1]['price']),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add to Cart'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
