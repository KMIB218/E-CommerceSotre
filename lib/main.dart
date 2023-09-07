import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './item.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
title: "Shopping",
debugShowCheckedModeBanner: false,
home: Home(),

    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List categories = [
  {
  "iconname" : Icons.laptop,
  "titl" : "Laptop",
  
  },
  {
  "iconname" : Icons.phone_android_rounded,
  "titl" : "Mobile",
  
  },
  {
  "iconname" : Icons.electric_bolt,
  "titl" : "Electrical",
  
  },
  {
  "iconname" : Icons.sports_esports_outlined,
  "titl" : "Games",
  
  },
  {
  "iconname" : Icons.car_repair,
  "titl" : "Cars",
  
  },
];

List item = [
{
"image" : "images/24.jpg",
"titl" : "Classic Watch",
"subtitle" : "Made In London 1984th",
"price" : "10000\$",
},
{
"image" : "images/23.jpg",
"titl" : "Classic Shoes",
"subtitle" : "Made In Korea 1992th",
"price" : "11000\$",
},
];
@override
 Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.orange,iconSize: 30,items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "*"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "*"),
        BottomNavigationBarItem(icon: Icon(Icons.person_2),label: "*"),
      ]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  Expanded( flex: 1,child:TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.black,
                      hintText: "Search",
                      
                    )
                  )),
                  SizedBox(width: 10),
                  Icon(Icons.menu,size: 40,color: Colors.black),
                  
                  
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Categories",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.black)),
                      ],
                    ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                      return       Column(
                      children: [
              Container(
                padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                       child: IconButton(onPressed: () {
                         
                       }, icon: Icon(categories[index]['iconname'],)),
                     ),
                     
                     Text(categories[index]['titl']),
                     
                      ],
                    );          
                  },
              
                    
                       
                    
              
                  ),
              ),
              SizedBox(height: 50),
               Text("Fashions",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
              SizedBox(height: 15),

              Container(
                height: 250,
                width: 200,
                child: PageView(
                children: [
                  Image.network("https://i.pinimg.com/564x/0a/d2/5f/0ad25f289854025ad9d6be451f292f59.jpg"),
                  Image.network("https://i.pinimg.com/564x/da/e6/e8/dae6e84a2aeaec8b348c36a3bdcf979c.jpg"),
                  Image.network("https://i.pinimg.com/564x/cb/ed/29/cbed293768ab192831ad109857cc3dae.jpg"),
                  Image.network("https://i.pinimg.com/564x/53/67/e6/5367e6b5d838bb76cfe42293bf001c0a.jpg"),
                  Image.network("https://i.pinimg.com/564x/18/36/a6/1836a6111ddbc59a5155e387797c31fd.jpg"),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              

              Container(margin: EdgeInsets.only(bottom: 10),child: Text("Best Selling",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),                 
            
               Container(
                height: 250,
                width: 200,
                 child: ListView(
                   shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                   children:[ InkWell(
                    onTap: (){
                      // Get.to(()=> Item(data: Home(),) );
                    },
                     child: GridView.builder(
                      itemCount: item.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 215,),
                       itemBuilder: (context, index) {
                         return InkWell(
                          onTap: () {
                            Get.to(()=> Item(data:item[index],));
                          },
                           child: Card(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 6),
                                    width: 200,
                                    height: 150,
                                    color: Colors.grey[200],
                                    child:Image.asset(item[index]['image'],fit: BoxFit.fill,height: 100,)
                                  ),
                                  Text(item[index]['titl'],style: TextStyle(letterSpacing: 2),),
                                  Text(item[index]['subtitle'],style: TextStyle(letterSpacing: 1,fontSize: 11,color: Colors.grey)),
                                  Container(alignment: Alignment.topLeft,child: Text(item[index]['price'],style: TextStyle(fontSize: 20,color:  Colors.orange))),
                                  
                                      
                                ],
                              ),
                              
                              
                             ),
                         );

                       },
                           
                           
                                    

                               ),
                   ),
                 ]),
               ),

              
              
            ],
          ),
      ),
    );
  }
}