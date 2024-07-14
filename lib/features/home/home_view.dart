import 'package:flutter/material.dart';

import '../../components/custom_column.dart';
import '../../components/custom_post_widget.dart';

import '../../product/constants/app_constants.dart';
import '../../product/constants/padding_constants.dart';

import '../../product/enums/post_type_enum.dart';

import '../../product/extensions/size_extension.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        child: CustomColumn(
          gap: SizedBox(
            height: 0.01.height,
          ),
          padding: PaddingConstants.allXSmall,
          children: [

            CustomPostWidget(
              postOwnerUsername: 'username',
              postOwnerProfilePicture: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              postOwnerDescription: "We all have dreams, hidden desires yearning to be fulfilled. Don't let fear or doubt hold you back. Take that first step, no matter how small. Each action, each decision, propels you closer to your goals. Remember, most journeys begin with a single step. Believe in yourself, chase your passions, and create a life that excites you.",
              postType: PostType.onlyText,
              postLikeCount: 100,
              postComments: const [],
              postPublishedDateTime: DateTime.now(),
            ),

            CustomPostWidget(
              postOwnerUsername: 'username',
              postOwnerProfilePicture: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              postOwnerDescription: "We all have dreams, hidden desires yearning to be fulfilled. Don't let fear or doubt hold you back. Take that first step, no matter how small. Each action, each decision, propels you closer to your goals. Remember, most journeys begin with a single step. Believe in yourself, chase your passions, and create a life that excites you.",
              postType: PostType.onlyMedia,
              postLikeCount: 50,
              postComments: const [],
              postPublishedDateTime: DateTime.now().subtract(const Duration(minutes: 50)),
            ),
          ]
        ),
      ),
    );
  }
}
