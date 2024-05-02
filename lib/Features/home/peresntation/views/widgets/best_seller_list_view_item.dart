import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/book_rating.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/custom_list_view_item.dart';
import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: FeaturedListViewItem(
                      imageUrl: bookModel.volumeInfo.imageLinks.thumbnail)),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle18
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
