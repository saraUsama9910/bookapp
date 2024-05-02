import 'package:bookapp/Features/home/peresntation/manager/similar_newest_books_cubit/similar_newest_books_cubit.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/custom_list_view_item.dart';
import 'package:bookapp/core/widgets/custom_error_widget.dart';
import 'package:bookapp/core/widgets/custom_loading_indicator.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarNewestBooksCubit, SimilarNewestBooksState>(
      builder: (context, state) {
        if (state is SimilarNewestBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            width: MediaQuery.of(context).size.height * 6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  child: FeaturedListViewItem(
                    imageUrl:
                        'https://th.bing.com/th/id/OIP.-b1hPYTHoYMQC3Fw7OwMCQHaK6?rs=1&pid=ImgDetMain',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarNewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
