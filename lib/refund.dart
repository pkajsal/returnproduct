import 'package:flutter/material.dart';
import 'package:returnproduct/status.dart';

class Refund extends StatefulWidget {
  const Refund({super.key});

  @override
  State<Refund> createState() => _RefundState();
}

class _RefundState extends State<Refund> {
  String _selectedReason = '';

  List<String> reason = [
    "UPI(Google Pay,PhonePe,Paytm)",
    "Bank Transfer",
    "Meesho Balance",
  ];
  List<String> Details = [
    "Get refund within 24 hours after Pickup",
    "Get refund within 24 hours after Pickup",
    "Get instant refund after pickup",
  ];

  List<IconData> icon = [
    Icons.payments,
    Icons.food_bank_outlined,
    Icons.money,
  ];
  static const Color secondaryDarkColor = Color(0XFF212121);
  static const Color lineDarkColor = Color(0XFF303030);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenHeight * 0.005,
            color: Colors.grey,
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.05),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Details",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/dress.jpg",
                height: screenHeight * 0.07,
                width: screenWidth * 0.15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flawsome Stylish Girls Tops",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text("Size:4-5 Years"),
                  Text("\$331")
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Container(
            height: screenHeight * 0.005,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.04),
            child: Row(
              children: [
                Text(
                  "Choose a Refund Mode",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                ),
                SizedBox(
                  width: screenWidth * 0.02,
                ),
                Container(
                  height: screenHeight * 0.03,
                  width: screenWidth * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent.shade100,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_sharp,
                        color: Colors.green,
                      ),
                      Text(
                        "100% Safe",
                        style: TextStyle(
                            color: Colors.green[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.4,
            child: ListView.builder(
                itemCount: reason.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: screenHeight * 0.09,
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  icon[index],
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        reason[index].toString(),
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.03,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.005,
                                      ),
                                      Text(
                                        Details[index].toString(),
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.025),
                                      ),
                                    ],
                                  ),
                                ),
                                Radio(
                                  groupValue: _selectedReason,
                                  value: reason[index],
                                  activeColor: Colors.white,
                                  onChanged: (value) {
                                    // Update the selected reason when the radio button is changed
                                    setState(() {
                                      _selectedReason = value!;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Status()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
