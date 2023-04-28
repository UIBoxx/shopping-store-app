import 'package:flutter/material.dart';

class productItem extends StatelessWidget {
  String productImg;
  String productName;
  String storeLocation;
  double productPrice;

  productItem(
      {super.key,
      required this.productImg,
      required this.productName,
      required this.productPrice,
      required this.storeLocation});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(productImg),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName.length > 12
                              ? '${productName.substring(0, 12)}..'
                              : productName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Text(
                          storeLocation.length > 12
                              ? '${storeLocation.substring(0, 12)}..'
                              : storeLocation,
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: true,
                        ),
                      ],
                    ),
                    Text(
                      'Rs.\n$productPrice',
                      style: TextStyle(
                        color: Colors.green.shade600,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: const Alignment(1, -1),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(150, 216, 27, 96),
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(10))),
            child: const Center(
              child: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
