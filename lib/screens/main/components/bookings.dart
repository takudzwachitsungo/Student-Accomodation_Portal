import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/product/product_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class BookingsList extends StatelessWidget {
  List<Product> products = [
    Product('assets/kitchen-1.jpg', 'Add Hostel', /*'Bag'*/ 'First Floor', 2.33,
        Icons.add),
    Product('assets/bed-2.jpg', 'Room Allocation' /*'Cap'*/,
        'Cap with beautiful design', 10, Icons.hotel),
    Product('assets/jeans_1.png', /*'Cap'*/ 'Room Checking', 'Jeans for you',
        20, Icons.check),
    Product('assets/womanshoe_3.png', 'Cart' /*'Woman Shoes'*/,
        'Shoes with special discount', 30, Icons.shopping_cart),
    Product('assets/bag_10.png', 'Payment',
        /*'Bag Express'*/ 'Bag for your shops', 40, Icons.payment),
    //Product('assets/jeans_3.png', 'Jeans', 'Beautiful Jeans', 102.33),
    Product('assets/ring_1.png', 'Silver Ring', 'Description', 52.33,
        Icons.article),
    //Product('assets/shoeman_7.png', 'Shoes', 'Description', 62.33),
    //Product('assets/headphone_9.png', 'Headphones', 'Description', 72.33),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 8.0),
                  width: 4,
                  color: mediumYellow,
                ),
              ),
              Center(
                  child: Text(
                'Bookings',
                style: TextStyle(
                    color: darkGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: MasonryGridView.count(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 3,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => new ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ProductPage(product: products[index]))),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [
                            const Color.fromARGB(255, 134, 59, 59)
                                .withOpacity(0.3),
                            const Color.fromARGB(255, 63, 24, 24)
                                .withOpacity(0.7),
                          ],
                          center: Alignment(0, 0),
                          radius: 0.6,
                          focal: Alignment(0, 0),
                          focalRadius: 0.1),
                    ),

                    //new code insertion
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            products[index]
                                .icon, // Replace with the appropriate icon
                            color: Colors.white,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            // products.name,
                            products[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    /*child: Hero(
                          tag: products[index].image,
                          child: Image.asset(products[index].image))*/
                  ),
                ),
              ),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}
