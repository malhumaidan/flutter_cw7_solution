import 'package:flutter/material.dart';
import 'package:flutter_cw_7_solution/SecondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var controller = TextEditingController();
  var selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("دفتر اليوميات"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              child: Column(
                children: [
                  Text(
                    "اختر اللون المفضل",
                    style: TextStyle(fontSize: 40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedColor = Colors.green;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedColor = Colors.blue;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedColor = Colors.red;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedColor = Colors.orange;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "ماذا تريد ان تكتب",
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: "Hint",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage(
                        note: controller.text, color: selectedColor);
                  }));
                },
                child: Text(
                  "حفظ",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
