import 'package:bookapp/Features/home/peresntation/views/widgets/book_actions.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/book_rating.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/custom_list_view_item.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/similar_books_list_view.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            child: FeaturedListViewItem(),
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
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('You Can Also Like',
                style: Styles.textStyle18.copyWith(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
              height: 150,
              child: Padding(
                padding: EdgeInsets.only(left: 4),
                child: SimilarBooksListView(),
              ))
        ],
      ),
    );
  }
}
