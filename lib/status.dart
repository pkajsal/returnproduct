import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  static const Color secondaryDarkColor = Color(0XFF212121);
  static const Color lineDarkColor = Color(0XFF303030);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: lineDarkColor,
      appBar: AppBar(
        backgroundColor: secondaryDarkColor,
        title: Text(
          "RETURN/EXCHANGE",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: CircleAvatar(
              backgroundColor: Colors.green[100],
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: screenWidth * 0.15,
              ),
              radius: screenWidth * 0.1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              "Return Request Submitted",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(
                    color: Colors.purple,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                "Check Status",
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ),
          Container(
            height: 5,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pickup By",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
                Text(
                  "21 Mar",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  "Refund Amount",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
                Text(
                  "\$329 will be transfered to your Bank account within 5 hours of pickup",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please note",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.note,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Keep product tags and receipts safely")
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Our agent will check Product before Pickup")
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
