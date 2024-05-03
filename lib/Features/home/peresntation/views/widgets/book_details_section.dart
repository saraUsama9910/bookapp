import 'package:bookapp/Features/home/peresntation/views/widgets/book_actions.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/book_rating.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/featured_list_view_item.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          child: FeaturedListViewItem(imageUrl: 'https://th.bing.com/th/id/OIP.-b1hPYTHoYMQC3Fw7OwMCQHaK6?rs=1&pid=ImgDetMain',),
        ),
        Text(
          'the jungle book',
          style: Styles.textStyle30.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'ruyard kipling',
          style: Styles.textStyle18.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(),
        const BookActions(),
      ],
    );
  }
}
