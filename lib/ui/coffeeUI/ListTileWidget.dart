import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  late final Image? image;
  late final String? title;
  late final String? description;
  late final String? price;

  ListTileWidget({
    required this.image,
    required this.title,
    this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        width: 200,
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: image!,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: Text(
                title!,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                description!,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    price!,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  margin: const EdgeInsets.all(14.0),
                  padding: const EdgeInsets.all(2),
                  child: const Icon(Icons.add),
                )
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
