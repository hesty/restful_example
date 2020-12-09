import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget {
  Product product;

  ProductListRowWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/JSON_vector_logo.svg/1200px-JSON_vector_logo.svg.png"),
              height: 130,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(
              product.productName,
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
            Text(product.unitPrice.toString(),
                style: TextStyle(fontSize: 18, color: Colors.blueAccent)),
          ],
        ),
      ),
    );
  }
}
