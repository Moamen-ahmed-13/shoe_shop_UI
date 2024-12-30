import 'package:animate_do/animate_do.dart';
import 'package:day_12/shoes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Shoes',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              FadeInDown(
                from: 50,
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AspectRatio(
                        aspectRatio: 2 / 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              'All',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2 / 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              'Soccer',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2 / 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              'Sneakers',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2 / 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              '  Football',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2 / 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              'Golf',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              itemCard(
                image: 'assets/images/one.jpg',
                tag: 'red',
              ),
              itemCard(
                image: 'assets/images/two.jpg',
                tag: 'blue',
              ),
              itemCard(
                image: 'assets/images/three.jpg',
                tag: 'white',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemCard({image, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ShoesPage(
                  image: image,
                  tag: tag,
                );
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.shade400,
                offset: const Offset(0, 10),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  from: 100,
                  child: Row(children: [
                    Text(
                      'Sneakers',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(Icons.favorite_border_outlined,
                            color: Colors.black),
                      ),
                    ),
                  ]),
                ),
                FadeInDown(
                  from: 150,
                  child: Text(
                    'Nike',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Spacer(),
                FadeInDown(
                  from: 200,
                  child: Text(
                    '100\$',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
