import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:returnproduct/selectedreason.dart';



class Reason extends StatefulWidget {
  const Reason({super.key});

  @override
  State<Reason> createState() => _ReasonState();
}

class _ReasonState extends State<Reason> {
  String _selectedReason = '';

  List<String> reason = [
    "Product not needed anymore",
    "Quality issue",
    "Size/Fit issue",
    "Damaged/Used product",
    "Item missing in the package",
    "Different products delivered"
  ];
  List<String> Details = [
    "Did n't like the product or ordered by mistake",
    "Poor fabric/material,finishing or performance",
    "Tight or loose fitting",
    "Dirty,old,torn or broken products",
    "Part missing in product or got less quantity",
    "Recieved different size,colour/product than ordered"
  ];

  List<IconData> icon = [
    Icons.shopping_bag_outlined,
    Icons.warning,
    Icons.error_outline_rounded,
    Icons.shopping_bag_outlined,
    Icons.warning,
    Icons.error_outline_rounded
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
        title: Text("RETURN/EXCHANGE",style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.navigate_next,color: Colors.white,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenHeight * 0.01,
            color: Colors.grey,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                bottom: screenHeight * 0.01),
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
                height: screenHeight * 0.1,
                width: screenWidth * 0.2,
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
            height: screenHeight * 0.02,
          ),
          Container(
            height: screenHeight * 0.01,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Text(
              "Please select reason for return/exchange",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            height: screenHeight * 0.5,
            child: ListView.builder(
                itemCount: reason.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: screenHeight * 0.08,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectedReason()));
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