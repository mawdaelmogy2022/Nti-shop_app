import 'package:flutter/material.dart';
import 'package:shop_app/feature/home/data/model/product_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.productModel,required this.ontap});
  final ProductModel productModel;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        child: Row(
          children: [
            SizedBox(
                width: 70,
                height: 70,
                child: Image.network(productModel.image)),
              const  SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                 width: 230,
                  child: Text(
                    productModel.title,
                    maxLines: 3,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
               const SizedBox(height: 20,),
                Row(
                  children: [
                    Text(
                      'Price : ${productModel.price}' r'$',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 175, 27, 175), fontWeight: FontWeight.bold),
                    ),
                 const   SizedBox(width: 50,),
                      const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                const  SizedBox( width: 10,),
                    Text(
                      '${productModel.rating.rate}',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 175, 27, 175),
                          fontWeight: FontWeight.bold),
                    ),
            
                  
                  ],
                ),
                const SizedBox(height: 8),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
