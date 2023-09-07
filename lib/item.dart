import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final data ;
  const Item({super.key, this.data});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:const Drawer() ,
      appBar: AppBar(
        centerTitle: true,
        title:  Container(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag_outlined,color: Colors.black,),
              Text(" Shopping ",style: TextStyle(color: Colors.black)),
              Text("Order",style: TextStyle(color: Colors.orange)),
              
            ],
          ),
        ),
        iconTheme:const IconThemeData(
          color: Colors.black,
          size: 30
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
           Card(child: Image.asset(widget.data['image'])),
           Center(child: Text(widget.data['titl'],style: TextStyle(fontSize: 30,letterSpacing: 2))),
           Center(child: Text(widget.data['subtitle'],style: TextStyle(letterSpacing: 2,color: Colors.grey))),
           SizedBox(
            height: 20,
           ),
           Center(child: Text(widget.data['price'],style: TextStyle(fontSize: 20,color: Colors.orange))),
           SizedBox(height: 20),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Color :"),
              SizedBox(width: 15),
              Container(
                 
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
              SizedBox(width: 5),
              Text("Grey"),
              SizedBox(width: 15),
              Container(
                 
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
              SizedBox(width: 5),
              Text("Black"),
              
            ],
          
           ),
           SizedBox(
            height: 20,
           ),

           Container(
            margin: EdgeInsets.only(right: 35),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Size:"),
                SizedBox(width: 15),
                Text("40",style: TextStyle(color: Colors.black)),
                SizedBox(width: 15),
                Text("41",style: TextStyle(color: Colors.grey)),
                SizedBox(width: 15),
                Text("42",style: TextStyle(color: Colors.grey)),
                SizedBox(width: 15),
                Text("43",style: TextStyle(color: Colors.grey)),
                
                
              ],
             ),
           ),
           Container(
             padding: EdgeInsets.only(left: 50,right: 50),
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
             child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),padding: MaterialStatePropertyAll(EdgeInsets.all(15))),onPressed: () {
               
             }, child: Text("Add To Cart")),
           )
        ],
      ),
    );
  }
}