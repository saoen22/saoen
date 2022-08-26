import 'package:flutter/material.dart';
import 'package:meetup/helpers/appcolors.dart';

// ignore: camel_case_types
class user3 extends StatelessWidget {
  const user3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("HI")),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(),
              image: DecorationImage(
                  image: AssetImage("assets/images/a2.jpg"), fit: BoxFit.fill),
            ),
            child: Container(
              width: double.infinity,
              height: 150,
            ),
          ),
          Transform.translate(
            offset: const Offset(-100, 120),
            child: Container(
                width: 400,
                child: Container(
                    height: double.infinity,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                            bottom: Radius.circular(0)),
                        border: Border.all(
                          color: Colors.white,
                          width: size.width * 0.01,
                        )))),
          ),
          Transform.translate(
            offset: Offset(-30, 0),
            child: Container(
              width: 140,
              height: 200,
              child: Container(
                height: 300,
                alignment: const Alignment(0.0, 0.7),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/p1.png"),
                  radius: 70.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 200, 150, 0),
            alignment: Alignment.center,
            child: Column(children: [
              const Text("Sokchamrern",
                style: TextStyle(fontSize: 20),
              ),
              const Text("@Chamrern1", style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30,
                    child: const Center(
                        child: Text("Followers",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 40,
                    child: const Center(
                        child: Text("Following",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 22,
                    child: const Center(
                        child: Text("150", style: TextStyle(fontSize: 24))),
                  ),
                  Container(
                    height: 22,
                    child: const Center(
                        child: Text("60", style: TextStyle(fontSize: 24))),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Edite Profile",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black,
                          primary: AppColors.MAIN_COLOR,
                          //onSurface: Colors.grey,
                          //side: BorderSide(color: Colors.black, width: 1),
                          elevation: 20,
                          minimumSize: Size(140, 40),
                          //shadowColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.more_horiz_outlined,
                            color: Colors.black, size: 35),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black,
                          primary: AppColors.MAIN_COLOR,
                          elevation: 20,
                          minimumSize: const Size(30, 30),
                          //shadowColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        )),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
