import 'package:bookapp/Features/home/peresntation/manager/similar_newest_books_cubit/similar_newest_books_cubit.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/book_details_view_body.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarNewestBooksCubit>(context).fetchSimilarNewestBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: BookDetailsViewBody());
  }
}
