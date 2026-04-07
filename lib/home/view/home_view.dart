import 'package:flutter/material.dart';
import 'package:flutter_project_2/commons/search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Icon(Icons.menu, size: 25)),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliver to",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text("Halal Lab Office"),
                            Icon(Icons.arrow_drop_down, size: 23),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Badge(
                      label: Text(
                        "2",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      padding: EdgeInsets.all(2),
                      backgroundColor: Colors.deepOrange,
                      offset: Offset(-5, 0),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.store,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Hey Halal,",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      " Good Afternoon",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SearchField(),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "All Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.fromLTRB(16, 10, 0, 10),
              children: [
                _buildCategoryChip(true, "assets/icons/fire.png", "All"),
                _buildCategoryChip(false, "assets/icons/burger.png", "Burger"),
                _buildCategoryChip(false, "assets/icons/pizza.png", "Pizza"),
                _buildCategoryChip(false, "assets/icons/sushi.png", "Sushi"),
                _buildCategoryChip(false, "assets/icons/desert.png", "Dessert"),
                _buildCategoryChip(false, "assets/icons/drinks.jpg", "Drinks"),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Text(
                  "Open Restaurents",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildRestaurantCard(),
                SizedBox(height: 15),
                _buildRestaurantCard(),
                SizedBox(height: 15),
                _buildRestaurantCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }





// Catergory

  Widget _buildCategoryChip(
    bool isActive,
    String imagePath,
    String categoryName,
  ) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isActive ? Color(0xFFFFD27C) : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              // .withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(width: 13),
          Text(
            categoryName,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }



  
//  Restaurents Cards
  Widget _buildRestaurantCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// IMAGE
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              "assets/images/toast.jpeg",
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          /// DETAILS
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rose Garden Restaurant",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),

                SizedBox(height: 5),

                Text(
                  "Burger • Chicken • Wings",
                  style: TextStyle(color: Colors.grey),
                ),

                SizedBox(height: 8),

                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    SizedBox(width: 5),
                    Text("4.7"),

                    SizedBox(width: 15),

                    Icon(Icons.delivery_dining, size: 18),
                    SizedBox(width: 5),
                    Text("Free"),

                    SizedBox(width: 15),

                    Icon(Icons.access_time, size: 18),
                    SizedBox(width: 5),
                    Text("20 min"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
