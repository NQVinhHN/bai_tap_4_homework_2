import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  var size, height, width;

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Flex Demo - Code Fresher"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(bottom: 25, top: 25),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset("assets/images/pic1.png",
                          fit: BoxFit.fill),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Lập trình Flutter",
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Thực chiến dự án app\n mobile 2022",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.green,
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10, top: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Lập trình \n Android",
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Java + Kotlin",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset("assets/images/pic2.png",
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              height: 40,
              color: Colors.green,
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child:
                        Image.asset("assets/images/pic3.png", fit: BoxFit.fill),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Lập trình \n Java cơ bản",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Cho người mới \n bắt đầu",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
