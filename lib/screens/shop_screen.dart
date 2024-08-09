import 'package:flutter/material.dart';
import 'package:food_panda/constants/colors.dart';

import '../widgets/popular_tab.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
  }

  //shop

  final List<String> categories = [
    "Popular",
    "Cricket Deals",
    "Strong Pepsi Deals",
    "All New"
  ];

  final List<Map<String, String>> popularItems = [
    {
      "title": "Cricket Deal 2",
      "price": "Rs. 549.00",
      "oldPrice": "Rs. 869.00",
      "image": "assets/images/cricket_deal_2.jpg"
    },
    {
      "title": "Chicken Fajita",
      "price": "from Rs. 785.00",
      "image": "assets/images/chicken_fajita.jpg"
    },
    {
      "title": "Chicken Tikka",
      "price": "from Rs. 785.00",
      "image": "assets/images/chicken_tikka.jpg"
    },
    {
      "title": "Chicken Teriyaki",
      "price": "from Rs. 840.00",
      "image": "assets/images/chicken_teriyaki.jpg"
    },
    {
      "title": "Roasted Chicken Breast",
      "price": "from Rs. 710.00",
      "image": "assets/images/roasted_chicken_breast.jpg"
    },
    {
      "title": "Chicken Tikka Salad",
      "price": "from Rs. 845.00",
      "image": "assets/images/chicken_tikka_salad.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "15-30 mn",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColor,
                    fontSize: 14),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline_rounded,
                color: AppColors.mainColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share_outlined,
                color: AppColors.mainColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: AppColors.mainColor,
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.mainColor,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/subway_logo.jpg",
                        height: 70,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Subway",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "1.5km away | Rs. 99.00 Delivery | Rs 249.00 Minimum"
                          " Service fee applies",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "More info",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star_outline,
                        color: AppColors.mainColor,
                        size: 30,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "3.9",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1000+ rating",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See review",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_rounded,
                        color: AppColors.mainColor,
                        size: 25,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Delivery: 10-30 min",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/voucher_panda.png",
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Available deals",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColors.mainColor.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/percentage_icon.png",
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Rs. 320 off",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.mainColor),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Min. order Rs. 320. Valid for selected items.\nAuto-applied",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    controller: _tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    labelColor: AppColors.mainColor,
                    indicatorColor: AppColors.mainColor,
                    indicatorWeight: 3,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(
                        text: "Popular",
                      ),
                      Tab(
                        text: "Cricket Deals",
                      ),
                      Tab(
                        text: "Strong Pepsi Deals",
                      ),
                      Tab(
                        text: "All New",
                      ),
                    ],
                  ),
                  Center(
                    child: [
                      Center(
                        child: PopularTab(popularItem: popularItems,),
                      ),
                      Center(
                        child: Text("Cricket Deals"),
                      ),
                      Center(
                        child: Text("Strong Pepsi Deals"),
                      ),
                      Center(
                        child: Text("All New"),
                      ),
                    ][_tabController.index],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
