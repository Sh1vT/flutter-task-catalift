import 'package:flutter/material.dart';
import 'similar_course_card.dart';

class SimilarCoursesSection extends StatelessWidget {
  const SimilarCoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 0, top: 8, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Similar Courses',
                style: TextStyle(
                  color: Color(0xFF1A237E),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFFBDBDBD),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 36,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildChip('All', true),
                _buildChip('AI & ML', false),
                _buildChip('Product', false),
                _buildChip('Sales', false),
                _buildChip('Public Speaking', false),
                _buildChip('Engineering', false),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SimilarCourseCard(
                  imagePath: 'assets/catalift_2.jpg',
                  title: 'Artificial Intelligence and ML',
                  lessons: 15,
                  price: 1500,
                ),
                SizedBox(width: 12),
                SimilarCourseCard(
                  imagePath: 'assets/catalift_top.png',
                  title: 'User Interface and User Experience',
                  lessons: 15,
                  price: 1500,
                ),
                SizedBox(width: 12),
                SimilarCourseCard(
                  imagePath: 'assets/catalift_3.jpg',
                  title: 'Computer Engineering',
                  lessons: 15,
                  price: 1500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, bool selected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ChoiceChip(
        label: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : const Color(0xFF1A237E),
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: selected,
        selectedColor: const Color(0xFF1A237E),
        backgroundColor: const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onSelected: (_) {},
      ),
    );
  }
} 