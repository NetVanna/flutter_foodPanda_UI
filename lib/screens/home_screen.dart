import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_panda/constants/colors.dart';
import 'package:food_panda/screens/shop_screen.dart';
import 'package:food_panda/widgets/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> items = [
    {
      'title': 'Food delivery',
      'subtitle': 'Order food you love',
      'imagePath': 'assets/images/Food_Delivery.png',
    },
    {
      'title': 'pandamart',
      'subtitle': 'Essentials delivered fast',
      'imagePath': 'assets/images/pandamart.png',
    },
    {
      'title': 'Shops',
      'subtitle': 'Top brands to\nyour door',
      'imagePath': 'assets/images/shops.png',
    },
    {
      'title': 'Pick-up',
      'subtitle': 'Self-collect for\n50% off',
      'imagePath': 'assets/images/pick_up.png',
    },
    {
      'title': 'pandago',
      'subtitle': 'Send parcels in a \ntap',
      'imagePath': 'assets/images/pandago.png',
    },
  ];
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'MMK-S FOODS',
      'rating': '4.0',
      'reviews': '50+',
      'imagePath': 'assets/images/MMK-S FOODS.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '5% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Food Place',
      'rating': '4.4',
      'reviews': '100+',
      'imagePath': 'assets/images/Food Place.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '15-30 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Burger House',
      'rating': '4.7',
      'reviews': '200+',
      'imagePath': 'assets/images/Burger House.jpg',
      'minOrder': 'PKR 299 minimum',
      'cuisine': 'Pakistani',
      'time': '10-25 min',
      'discount': '10% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Pizza House',
      'rating': '4.5',
      'reviews': '150+',
      'imagePath': 'assets/images/Pizza House.jpg',
      'minOrder': 'PKR 249 minimum',
      'cuisine': 'Pakistani',
      'time': '20-40 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
  ];


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget._scaffoldKey,
      backgroundColor: AppColors.greyColor,
      drawer: MyDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            floating: true,
            pinned: true,
            expandedHeight: 150,
            backgroundColor: AppColors.mainColor,
            leading: IconButton(
              onPressed: () => widget._scaffoldKey.currentState?.openDrawer(),
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "your location or address will be here ...",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Positioned(
                    top: 28,
                    right: 10,
                    child: Container(
                      width: 24,
                      height: 24,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "0",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          hintText: "Search for shops & restaurants",
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 30,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3.1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.items[0]['title']!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(widget.items[0]['subtitle']!),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Image.asset(
                                  widget.items[0]['imagePath']!,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.items[1]['title']!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(widget.items[1]['subtitle']!),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Image.asset(
                                    widget.items[1]['imagePath']!,
                                    height: 120,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.items[2]['title']!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(widget.items[2]['subtitle']!),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Image.asset(
                                      widget.items[2]['imagePath']!),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.items[3]['title']!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(widget.items[3]['subtitle']!),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  widget.items[3]['imagePath']!,
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.items[4]['title']!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(widget.items[4]['subtitle']!),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  widget.items[4]['imagePath']!,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Free delivery",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 240,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: widget.restaurants.length,
                                itemBuilder: (context, index) {
                                  return _buildRestaurantsItem(
                                      widget.restaurants[index]);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRestaurantsItem(Map<String, dynamic> restaurants) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShopScreen(),
          ),
        );
      },
      child: Container(
        width: 280,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  child: Image.asset(
                    restaurants["imagePath"],
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (restaurants['discount'].isNotEmpty)
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          child: Text(
                            restaurants['discount'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      Container(
                        margin: restaurants['discount'].isNotEmpty
                            ? EdgeInsets.only(top: 5)
                            : EdgeInsets.only(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Text(
                          restaurants['deliveryType'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        restaurants['name'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 18,
                          ),
                          SizedBox(width: 5),
                          Text(
                            restaurants['rating'],
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "(${restaurants['reviews']})",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "${restaurants['minOrder']} - ${restaurants['cuisine']}",
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.black,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        restaurants['time'],
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.delivery_dining_rounded,
                        color: AppColors.mainColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        restaurants['deliveryType'],
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
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
