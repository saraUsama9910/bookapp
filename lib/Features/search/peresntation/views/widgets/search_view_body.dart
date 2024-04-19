import 'package:bookapp/Features/search/peresntation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
      child: Column(
        children: [CustomSearchTextField()],
      ),
    );
  }
}
