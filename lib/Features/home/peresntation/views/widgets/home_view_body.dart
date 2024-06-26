import 'package:bookapp/Features/home/peresntation/views/widgets/best_seller_list_view.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/custom_app_bar.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/featured_books_list_view.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 10,
                width: 15,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
