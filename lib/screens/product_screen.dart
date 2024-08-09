import 'package:flutter/material.dart';
import 'package:food_panda/constants/colors.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage("assets/images/cricket_deal_2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.close,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cricket Deal 2",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Rs. 869.00",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          "Rs. 869.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "6 inches sub & 345 ml drink",
                  style: TextStyle(color: Colors.black54),
                ),
                Divider(height: 40),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Choose your Bread",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "Required",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Select One",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.mainColor),
                      ),
                      SizedBox(height: 8),
                      RadioListTile(
                        title: Text("Italian"),
                        secondary: Text(
                          "Free",
                          style: TextStyle(fontSize: 16),
                        ),
                        value: "Italian",
                        groupValue: "bread",
                        activeColor: AppColors.mainColor,
                        onChanged: (value) {},
                      ),
                      RadioListTile(
                        title: Text("Wheat"),
                        secondary: Text(
                          "Free",
                          style: TextStyle(fontSize: 16),
                        ),
                        value: "Wheat",
                        groupValue: "bread",
                        activeColor: AppColors.mainColor,
                        onChanged: (value) {},
                      ),
                      RadioListTile(
                        title: Text("Sesame"),
                        secondary: Text(
                          "Free",
                          style: TextStyle(fontSize: 16),
                        ),
                        value: "Sesame",
                        groupValue: "bread",
                        activeColor: AppColors.mainColor,
                        onChanged: (value) {},
                      ),
                      RadioListTile(
                        title: Text("Honey Oat"),
                        secondary: Text(
                          "Free",
                          style: TextStyle(fontSize: 16),
                        ),
                        value: "Honey Oat",
                        groupValue: "bread",
                        activeColor: AppColors.mainColor,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Special instruction",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  "Please let us know if you are allergic to anything or "
                  "if we need to avoid anything",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      hintText: "e.g no mayo",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding: EdgeInsets.all(12)),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("0/500"),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "If this product is not available",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: ListTile(
                    title: Text("Remove it from my order"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 2),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.grey[400], shape: BoxShape.circle),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "10",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
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
