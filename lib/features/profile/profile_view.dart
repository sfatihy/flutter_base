import 'package:flutter/material.dart';

import '../../components/custom_modal_bottom_sheet.dart';
import '../../components/custom_profile_picture.dart';

import '../../product/constants/app_constants.dart';
import '../../product/constants/color_constants.dart';
import '../../product/constants/icon_constants.dart';
import '../../product/constants/image_constants.dart';
import '../../product/constants/padding_constants.dart';
import '../../product/constants/size_constants.dart';

import '../../product/extensions/size_extension.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {

    bool isMyProfile = false;

    return SafeArea(
      child: CustomScrollView(
        slivers: [

          SliverAppBar.medium(
            pinned: true,
            snap: false,
            stretch: true,
            floating: true,
            toolbarHeight: 0.065.height,
            expandedHeight: 0.155.height,
            backgroundColor: ColorConstants.white,
            surfaceTintColor: ColorConstants.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                const CustomProfilePicture(
                  imagePath: ImageConstants.profile
                ),

                Padding(
                  padding: PaddingConstants.onlyLMedium + PaddingConstants.vLarge,
                  child: const Text("username"),
                ),

                const Spacer(),

                !isMyProfile ? SizedBox(
                  width: SizeConstants.xxLarge * 3,
                  child: ElevatedButton(
                    child: const Text("Follow"),
                    onPressed: () {

                    },
                  ),
                ) : const SizedBox()
              ],
            ),
            actions: [
              isMyProfile ? IconButton(
                icon: const Icon(IconConstants.menu),
                onPressed: () {

                  showModalBottomSheetWidget(
                    context: context,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text(
                          'Settings',
                          style: TextStyle(
                            color: ColorConstants.primary,
                            fontSize: 24
                          ),
                        ),

                        ...List.generate(
                          10,
                          (index) => ListTile(
                            title: Text(index.toString()),
                            tileColor: Colors.red.shade100,
                          )
                        )
                      ],
                    ),
                  );
                },
              ) : const SizedBox()
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: PaddingConstants.hMedium + PaddingConstants.onlyTLarge,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [

                        CustomProfilePicture(
                          width: 0.2.width,
                          imagePath: ImageConstants.profile
                        ),

                        SizedBox(
                          width: SizeConstants.width * 0.125,
                        ),

                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("100"),
                            Text("Posts")
                          ],
                        ),

                        SizedBox(
                          width: SizeConstants.width * 0.05,
                        ),

                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("100"),
                            Text("Followers")
                          ],
                        ),

                        SizedBox(
                          width: SizeConstants.width * 0.05,
                        ),

                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("100"),
                            Text("Following")
                          ],
                        ),
                      ],
                    ),

                    const Padding(
                      padding: PaddingConstants.vSmall,
                      child: Text("@username"),
                    ),

                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: PaddingConstants.hMedium,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: PaddingConstants.onlyBXSmall,
                    child: Text('Touchdowns by day, debugging by night'),
                  ),

                  !isMyProfile ? Padding(
                    padding: PaddingConstants.onlyBXSmall,
                    child: ElevatedButton(
                      child: const Text("Follow"),
                      onPressed: () {

                      },
                    ),
                  ) : const SizedBox(),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(IconConstants.user),
                  title: Text(AppConstants.loremIpsum.split('.').first),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          )

        ],
      ),
    );
  }
}