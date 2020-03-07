import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85
    },
 {
      "name": "Red Dress",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
         itemBuilder: (BuildContext context, int index){
           return Single_Prod(
             product_name: product_list[index]['name'],
             product_picture: product_list[index]['picture'],
             product_old_price: product_list[index]['old_price'],
             prod_price: product_list[index]['price'],
           );
         }
         
    );
  }
}

class Single_Prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final prod_price;

  Single_Prod ({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.prod_price
  });
  @override
  Widget build(BuildContext context) {
   return Card(
     child: Hero(tag: product_name, child: Material(
       child: InkWell(onTap: (){},
        child: GridTile(
          footer: Container(
            color: Colors.white,
            child: ListTile(
              leading: Text(
                product_name,
                style:TextStyle(fontWeight: FontWeight.bold)
                ),
                title: Text("\$$prod_price", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
                ),
                subtitle: Text("\$$product_old_price", style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600, decoration: TextDecoration.lineThrough),
                ),
              )
            ),
          
          child: Image.asset(product_picture, fit: BoxFit.cover),)
       ,)
      ,)
    ,)
   );
  }
}