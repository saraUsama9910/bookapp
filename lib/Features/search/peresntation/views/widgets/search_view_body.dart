import 'package:bookapp/Features/home/peresntation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookapp/Features/search/peresntation/views/widgets/custom_search_text_field.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
            child: Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
