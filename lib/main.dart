import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {"name": "Electronics", "icon": "📱"},
    {"name": "Fashion", "icon": "👕"},
    {"name": "Home", "icon": "🏠"},
    {"name": "Food", "icon": "🍲"},
    {"name": "Beauty", "icon": "💄"},
    {"name": "Automobiles", "icon": "🚗"},
    {"name": "Sports", "icon": "🏋️"},
    {"name": "Books", "icon": "📚"},
    {"name": "Toys", "icon": "🧸"},
    {"name": "Health", "icon": "⚕️"}
  ];

  final List<Map<String, dynamic>> products = [
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
    {"image": "assets/apple.jpg", "title": "Apple iPhone 13", "price": "৳999", "rating": 4.5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("Shop Now",
          style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue, centerTitle: true, elevation: 3,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(CupertinoIcons.cart_fill), onPressed: () {}),],),


      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Categories",style:
            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),
            SizedBox(height: 60,child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length, itemBuilder:(context, index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.black,
                        blurRadius: 4, offset: Offset(0, 2))]),

                child: Row(children: [
                  Text(categories[index]["icon"]!,
                    style: TextStyle(fontSize: 15),),
                  SizedBox(width: 2,),
                  Text(categories[index]["name"]!,
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.bold),)
                ],),
              );
            },),),



            SizedBox(height: 30),
            Expanded(child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 15,
                mainAxisSpacing: 20, childAspectRatio: 0.7,),
              itemCount: products.length, itemBuilder: (context, index){
                return GestureDetector(onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailsActivity(
                          image: products[index]["image"]!,
                          title: products[index]["title"]!,
                          price: products[index]["price"]!,
                          rating: products[index]["rating"].toString()
                      )));},


        child: Card(elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Image.asset(products[index]["image"]!,
                    fit: BoxFit.cover,width: 150, height: 100,),)),

            Padding(padding: EdgeInsets.all(8),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text(products[index]["title"],
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16),overflow: TextOverflow.ellipsis,),

                Text(products[index]["price"],
                  style: TextStyle(color: Colors.redAccent),),
                SizedBox(height: 2,),
                Row(children: [
                  Icon(Icons.star,size: 15, color: Colors.orange,),
                  Text(products[index]["rating"].toString())],)
              ],
              ),
            )
          ],
          ),
        ),

                );
                },
            )
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: "Profile"),
      ],backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
