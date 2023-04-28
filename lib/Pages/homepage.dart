import 'package:flutter/material.dart';
import 'package:shoppy/util/categories.dart';

import 'package:gap/gap.dart';
import 'package:shoppy/util/topstore.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // final List topStores = <List>[
  //   ['ABC Store', 'Kathmandu'],
  //   ['XYZ Store', 'Lalitpur'],
  //   ['ABC Store', 'Pokhara'],
  //   ['XYZ Store', 'BiratNagar']
  // ];
  final List topStores = [
    ['The Book Nook', '123 Main St, Anytown, USA'],
    ['The Garden Depot', '456 Elm Ave, Anytown, USA'],
    ['The Gourmet Pantry', '789 Oak Blvd, Anytown, USA'],
    ['The Sports Locker', '101 Maple St, Anytown, USA']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(50),
              Column(
                children: [
                  Text(
                    'Shoppy',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.pink.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: 50,
                        color: Colors.pink.shade400,
                      ),
                      Text(
                        ' A   m a r k e t   p l a c e ',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.pink.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 50,
                        color: Colors.pink.shade400,
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for product or store',
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const Gap(20),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoriesType(
                      catName: 'Cabbage',
                    ),
                    CategoriesType(
                      catName: 'Root',
                    ),
                    CategoriesType(
                      catName: 'Green',
                    ),
                    CategoriesType(
                      catName: 'Cabbage',
                    ),
                    CategoriesType(
                      catName: 'Root',
                    ),
                    CategoriesType(
                      catName: 'Green',
                    ),
                  ],
                ),
              ),
              const Gap(50),
              const Text(
                'Top Stores',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              const Gap(20),

              GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3),
                itemBuilder: (BuildContext context, int index) {
                  return TopStore(
                    storeName: topStores[index][0],
                    storeAddress: topStores[index][1],
                  );
                },
              ),

              const Gap(50),
              const Text(
                'Trending Products',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              const Gap(20),
              // Replace the following with your own list of trending products
              GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://static.india.com/wp-content/uploads/2017/06/green-vegetables-.jpg?impolicy=Medium_Widthonly&w=700&h=467'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Product ${index + 1}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Kathmandu, Nepal',
                                        style: TextStyle(
                                          color: Colors.grey.shade500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$${(index + 1) * 10}',
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
                              color: Colors.pink.shade600,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10))),
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
