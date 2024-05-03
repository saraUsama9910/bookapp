import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/book_actions.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/book_rating.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/featured_list_view_item.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          child: FeaturedListViewItem(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          book.volumeInfo.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(),
        BooksAction(
          bookModel: book,
        ),
      ],
    );
  }
}
