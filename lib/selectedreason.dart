import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:returnproduct/refund.dart';

class SelectedReason extends StatefulWidget {
  const SelectedReason({super.key});

  @override
  State<SelectedReason> createState() => _SelectedReasonState();
}

class _SelectedReasonState extends State<SelectedReason> {
  String _selectedReason = '';
  static const Color secondaryDarkColor = Color(0XFF212121);
  static const Color lineDarkColor = Color(0XFF303030);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lineDarkColor,
      appBar: AppBar(
        backgroundColor: secondaryDarkColor,
        title: Text("RETURN/EXCHANGE",style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.navigate_next,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.005,
              color: Colors.grey,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05,bottom:MediaQuery.of(context).size.width * 0.05 ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Details",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ),
        
        
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/dress.jpg",
                  height: MediaQuery.of(context).size.width * 0.15,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Expanded(
                  child: Column(
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
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.005,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Text(
                "Please select reason for return/exchange",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quality issue",
                          style:
                              TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          "Poor fabric/material,finishing or performance",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Edit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.purple),
                      ),
                      Icon(
                        Icons.expand_more_outlined,
                        color: Colors.purple,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.002,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
              child: Text(
                "What is the issue with the Quality?",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.035, bottom: MediaQuery.of(context).size.height * 0.01),
              child: Text("Poor product quality or performance"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.002,
              color: Colors.grey,
            ),

            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: Text(
                "What do you want to do?",
                style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Return", style: TextStyle(fontWeight: FontWeight.w700)),
                  Radio(
                    groupValue: _selectedReason,
                    value: "YourValueHere",
                    activeColor: Colors.white,
                    onChanged: (value) {
                      // Update the selected reason when the radio button is changed
                      setState(() {
                        _selectedReason = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exchange", style: TextStyle(fontWeight: FontWeight.w700)),
                  Radio(
                    groupValue: _selectedReason,
                    value: "Exchange",
                    activeColor: Colors.white,
                    onChanged: (value) {
                      // Update the selected reason when the radio button is changed
                      setState(() {
                        _selectedReason = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.002,
              color: Colors.grey,
            ),

            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pickup Address",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "EDIT",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                bottom: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rishad",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                  Text(
                    "Avunjippuram, irumbumuzhi vadakkumuri, irumbuzhi, kerala, 676509",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                  Text(
                    "9876543210",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.002,
              color: Colors.grey,
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.04,
            // ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Refund()));
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
      ),
    );
  }
}
