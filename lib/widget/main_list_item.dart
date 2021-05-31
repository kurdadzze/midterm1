import 'package:flutter/material.dart';

class MainListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String id;

  MainListItem({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: FadeInImage(
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
                placeholder: AssetImage("assets/images/placeholder.png"),
                image: NetworkImage(imageUrl),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 8),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Text(rating, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 ),
            ),
            // Text(releaseDate),
          ],
        ),
      ),
    );
  }
}
