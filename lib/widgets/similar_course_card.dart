import 'package:flutter/material.dart';

class SimilarCourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int lessons;
  final int price;

  const SimilarCourseCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.lessons,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              imagePath,
              width: 150,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                const Icon(Icons.menu_book, size: 16, color: Color(0xFF1A237E)),
                const SizedBox(width: 4),
                Text(
                  '$lessons Lessons',
                  style: const TextStyle(
                    color: Color(0xFFBDBDBD),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Icon(Icons.bookmark_border, size: 18, color: Colors.grey[400]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color(0xFF1A237E),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              '\u20B9$price',
              style: const TextStyle(
                color: Color(0xFF1A9E60),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 