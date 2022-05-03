import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.2,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  "assets/images/groww-logo.png",
                  width: 28.0,
                  height: 28.0,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.search,
                        size: 18,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    TextSpan(
                      text: " Search Groww",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  "assets/images/groww-logo.png",
                  width: 28.0,
                  height: 28.0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: ListTile(
              leading: Icon(
                Icons.money,
                color: Color(0xFF96A8FD),
              ),
              title: Text("Fixed Deposits"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
