import 'package:flutter/material.dart';

class WorkshopItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String tutorName;
  final String tutorImageUrl;

  const WorkshopItem({
    Key key,
    this.imageUrl,
    this.title,
    this.tutorImageUrl,
    this.tutorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      tutorImageUrl,
                      width: 16,
                      height: 16,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    tutorName,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
