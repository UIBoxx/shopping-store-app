import 'package:flutter/material.dart';

class CategoriesType extends StatelessWidget {
  String catName;
  CategoriesType({super.key,required this.catName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink.shade50,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Text(catName,style: TextStyle(
            color: Colors.pink.shade800,
            fontSize: 12,
          )),
        ),
      ),
    );
  }
}