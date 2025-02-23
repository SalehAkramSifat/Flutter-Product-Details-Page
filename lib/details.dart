import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsActivity extends StatelessWidget{
  final String image;
  final String title;
  final String price;
  final String rating;

  DetailsActivity({
    required this.image, 
      required this.title, 
        required this.price, 
          required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        centerTitle: true,backgroundColor: Colors.purpleAccent,),

      
        body: Column(children: [
          Container(margin: EdgeInsets.all(20),
                    decoration: BoxDecoration
                    (borderRadius: BorderRadius.circular(20),
                     boxShadow: [BoxShadow(color: Colors.black12,
                     blurRadius: 10,spreadRadius: 2,
                     offset: Offset(0, 5))]),

                    
    child: ClipRRect
          (borderRadius: BorderRadius.circular(20),
           child: Image.asset
           (image, width: double.infinity,
            height: 250,fit: BoxFit.contain,),),),


          Expanded(
            child: Container
            (padding: EdgeInsets.all(10),
             decoration: BoxDecoration(color: Colors.white,
             borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
             topRight: Radius.circular(30)),
             boxShadow: [BoxShadow
             (color: Colors.black12,
              blurRadius: 10,spreadRadius: 2,
              offset: Offset(0, -5))]),

             
          child: Column
            (crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold,color: Colors.black87),),
              
              SizedBox(height: 5,),
              Text(price, 
              style: TextStyle(fontSize: 15, color: Colors.red),),
              
              Row(children: [
                Icon(Icons.star_border,color: Colors.orange,size: 18,),
                SizedBox(width: 5,),
                Text(rating, style: TextStyle
                (color: Colors.black, fontSize: 16)),
              ],),

              
              SizedBox(height: 20),
              Center
              (child: ElevatedButton(onPressed: (){}, 
              style: ElevatedButton.styleFrom
              (backgroundColor: Colors.deepPurpleAccent,
               shape: RoundedRectangleBorder
               (borderRadius: BorderRadius.circular(10)),
               
              padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15)),
                child: Text("Add To Cart",
                style: TextStyle(color: Colors.white, 
                fontWeight: FontWeight.bold,fontSize: 16,),),
              ),),],),))
        ],),
    );
  }
}
