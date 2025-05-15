import 'package:flutter/material.dart';
import 'widgets/course_header.dart';
import 'widgets/course_info.dart';
import 'widgets/similar_courses_section.dart';

class CourseDetailPage extends StatelessWidget {
  final Map<String, dynamic> course;

  const CourseDetailPage({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseHeader(course: course),
              CourseInfo(course: course),
              const SimilarCoursesSection(),
            ],
          ),
        ),
      ),
    );
  }
} 