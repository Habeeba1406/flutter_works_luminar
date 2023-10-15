import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bankUi(),
  ));
}

class bankUi extends StatelessWidget {
  var icons = [
    Icon(
      Icons.account_balance_rounded,
      color: Colors.black,
    ),
    Icon(
      Icons.payment,
      color: Colors.black,
    ),
    Icon(
      Icons.e_mobiledata_rounded,
      color: Colors.black,
    ),
    Icon(
      Icons.attach_money_outlined,
      color: Colors.black,
    ),
    Icon(
      Icons.qr_code,
      color: Colors.black,
    ),
    Icon(
      Icons.timer_outlined,
      color: Colors.black,
    )
  ];
  var iconname = [
    "My account",
    "Payment",
    "Loadesewa",
    "Fund Transfer",
    "Scan to pay",
    "Schedule Payment"
  ];
  var date = ["8-08-2023", "12-08-2023", "15-08-2023", "23-08-2023"];
  var inr = ["1000", "2500", "5000", "500"];

  bankUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Text(" Welcome Federal Bank"),
        ),
        actions: [
          Icon(Icons.qr_code),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Stack(
              children: [
                Container(
                  height: 140,
                  color: Colors.white,
                ),
                Container(
                  height: 70,
                  color: Colors.red,
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      height: 120,
                      width: 440,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              minRadius: 40,
                              backgroundImage: AssetImage(
                                  "assets/icons/images/profile5.jpeg"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Habeeba Nazrin",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "INR .200000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.remove_red_eye,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                Text(
                                  "29103890218498382193",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            );
          }, childCount: 1)),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      icons[index],
                      Text(
                        iconname[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              childCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
