import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ShoesPage extends StatefulWidget {
  const ShoesPage({super.key, required this.image, required this.tag});
  final String image;
  final String tag;

  @override
  State<ShoesPage> createState() => _ShoesPageState();
}

class _ShoesPageState extends State<ShoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: widget.tag,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.0),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white,
                                ),
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
                              SizedBox(width: 15),
                            ],
                          ),
                          Spacer(),
                          FadeInDown(
                            from: 50,
                            child: Text(
                              'Sneakers',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 20),
                          FadeInDown(
                            from: 100,
                            child: Text(
                              'Size',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FadeInDown(
                            from: 150,
                            child: Row(children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    '40',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    '42',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                    child: Text(
                                  '44',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    '46',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(height: 60),
                          FadeInDown(
                            from: 200,
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
