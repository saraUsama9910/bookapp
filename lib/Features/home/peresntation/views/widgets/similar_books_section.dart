import 'package:bookapp/Features/home/peresntation/views/widgets/similar_books_list_view.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You Can Also Like',
            style: Styles.textStyle18.copyWith(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView()
      ],
    );
  }
}
