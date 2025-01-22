import 'package:flutter/material.dart';
import 'package:shop_app/feature/home/data/model/product_model.dart';
import 'package:shop_app/feature/home/presentation/view/widget/custom_appbar.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(titleCategory: 'Details page'),
      body:  Card(
      child: Column(
        children: [
          SizedBox(
              width: 100,
              height: 200,
              child: Image.network(productModel.image)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.title,
                  maxLines: 4,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price : ${productModel.price} USD',
                          style: const TextStyle(
                              color: Colors.purple, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              '${productModel.rating.rate}',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              '/(${productModel.rating.count} review )',
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple
                      ),
                      width: 140,
                      height: 40,
                      child: Center(
                          child: Text(
                        productModel.category,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  productModel.description,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    ) ,
    );
  }
}
