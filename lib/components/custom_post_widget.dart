import 'package:flutter/material.dart';

import '../components/custom_column.dart';
import '../components/custom_modal_bottom_sheet.dart';
import '../components/custom_profile_picture.dart';

import '../product/constants/app_constants.dart';
import '../product/constants/color_constants.dart';
import '../product/constants/icon_constants.dart';
import '../product/constants/padding_constants.dart';
import '../product/constants/radius_constants.dart';

import '../product/enums/post_type_enum.dart';

import '../product/extensions/size_extension.dart';
import '../product/extensions/time_extension.dart';

class CustomPostWidget extends StatefulWidget {

  final String postOwnerUsername;
  final String postOwnerProfilePicture;
  final String postOwnerDescription;
  final PostType postType;
  final int postLikeCount;
  final List<String> postComments;
  final DateTime postPublishedDateTime;

  const CustomPostWidget({
    super.key,
    required this.postOwnerProfilePicture,
    required this.postOwnerUsername,
    required this.postOwnerDescription,
    required this.postType,
    required this.postLikeCount,
    required this.postComments,
    required this.postPublishedDateTime,
  });

  @override
  State<CustomPostWidget> createState() => _CustomPostWidgetState();
}

class _CustomPostWidgetState extends State<CustomPostWidget> {

  int pageIndex = 0;

  void commentsOn (BuildContext context) {
    showModalBottomSheetWidget(
      context: context,
      widget: CustomColumn(
        gap: SizedBox(
          height: 0.01.height,
        ),
        children: List.generate(
          10,
          (index) => Column(
            children: [
              RichText(
                text: TextSpan(
                  text: '${widget.postOwnerUsername} ',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700
                  ),
                  children: [
                    TextSpan(
                      text: widget.postOwnerDescription,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ]
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  widget.postPublishedDateTime.add(Duration(minutes: index * 45)).passedTimeMoreDetailed,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: ColorConstants.postBlack,
                    height: 0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.postBackground,
        border: Border.all(
          color: ColorConstants.postBlackAccent,
          width: 0.25
        ),
        borderRadius: RadiusConstants.small
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: PaddingConstants.vSmall + PaddingConstants.hXSmall,
            child: Row(
              children: [

                Padding(
                  padding: PaddingConstants.hSmall,
                  child: CustomProfilePicture(
                    imagePath: widget.postOwnerProfilePicture,
                    width: 0.075.width,
                  ),
                ),

                Text(
                  widget.postOwnerUsername,
                  style: Theme.of(context).textTheme.titleSmall,
                ),

                const Spacer(),

                IconButton(
                  iconSize: 16,
                  constraints: const BoxConstraints(),
                  style: const ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  icon: const Icon(
                    IconConstants.moreDetail,
                  ),
                  onPressed: () {
                    showModalBottomSheetWidget(
                      context: context,
                      widget: CustomColumn(
                        gap: SizedBox(
                          height: 0.01.height,
                        ),
                        children: const [],
                      )
                    );
                  },
                )
              ],
            ),
          ),

          widget.postType == PostType.onlyText ?
          Padding(
            padding: PaddingConstants.hXSmall,
            child: Text(AppConstants.loremIpsum.split('.').first),
          )
          : widget.postType == PostType.onlyMedia ?
          SizedBox(
            height: 0.45.height,
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Image.network(
                      index % 2 == 0 ?
                      'https://cdn.dribbble.com/userupload/15239462/file/original-6c18f5cdf66be0e25f1f8f08066412c7.jpg?resize=752x'
                      :
                      'https://cdn.dribbble.com/userupload/14885066/file/original-4ab934750d20d34b9c96e08b4764fdae.png?resize=752x',
                      width: double.infinity,
                    );
                  },
                  onPageChanged: (value) {
                    setState(() {
                      pageIndex = value;
                    });
                  },
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: PaddingConstants.onlyRXSmall,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        10,
                        (index) => Container(
                          width: 0.0125.width,
                          height: 0.0125.width,
                          margin: index != 9 ? PaddingConstants.onlyBXSmall : null,
                          decoration: BoxDecoration(
                            color: index == pageIndex ? ColorConstants.postIcon : ColorConstants.postBlackAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
          :
          const Padding(
            padding: PaddingConstants.hXSmall,
            child: Text("Not supported type."),
          ),

          Padding(
            padding: PaddingConstants.allXSmall,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          iconSize: 22,
                          constraints: const BoxConstraints(),
                          padding: EdgeInsets.zero,
                          color: ColorConstants.postIcon,
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          icon: const Icon(
                            IconConstants.favorite,
                          ),
                          onPressed: () {

                          },
                        ),

                        Text(
                          widget.postLikeCount.toString(),
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: ColorConstants.postBlack,
                            height: 0,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      width: 0.015.width,
                    ),

                    Column(
                      children: [

                        IconButton(
                          iconSize: 22,
                          constraints: const BoxConstraints(),
                          padding: EdgeInsets.zero,
                          color: ColorConstants.postIcon,
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          icon: const Icon(
                            Icons.mode_comment_outlined,
                          ),
                          onPressed: () {
                            commentsOn(context);
                          }
                        ),

                        Text(
                          widget.postComments.length.toString(),
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: ColorConstants.postBlack,
                            height: 0,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),

                  ],
                ),

                InkWell(
                  borderRadius: RadiusConstants.small,
                  onTap: () {
                    commentsOn(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: '${widget.postOwnerUsername} ',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700
                      ),
                      children: [
                        TextSpan(
                          text: widget.postOwnerDescription,
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ]
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    widget.postPublishedDateTime.passedTimeMoreDetailed,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: ColorConstants.postBlack,
                      height: 0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}