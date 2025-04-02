import 'package:flutter/material.dart';
import 'package:rise/core/config/extensions.dart';
import 'package:rise/core/theme/app_colors.dart';
import 'package:rise/features/community/presentation/views/add_community_screen.dart';
import 'package:rise/features/community/presentation/widgets/community_post_card.dart';
import 'package:rise/features/community/presentation/widgets/horizontal_avatar_list.dart';
import 'package:rise/shared/widgets/section_title_widget.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        title: Text("cummunity".cap, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //pending invites and friends
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(title: "pending invites".cap),

                  HorizontalAvatarList(users: List.generate(5, (index) => "user ${index + 1}"), isInvites: true),

                  ///
                  SectionTitle(title: "friends".cap),
                  HorizontalAvatarList(users: List.generate(5, (index) => "Friends ${index + 1}"), isInvites: false),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SectionTitle(title: "Recent Community Posts"),
            ),
            10.height(),

            ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.symmetric(horizontal: 16),
              physics: NeverScrollableScrollPhysics(), //disable scrolling
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CommunityPostCard(
                  username: "User ${index + 1}",
                  postContent: "This is a sample community post from User ${index + 1}.",
                  timeAgo: "${index + 2}h ago",
                );
              },
            ),

            60.height(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //new screen
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddCommunityPostScreen()));
        },
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.white,
        child: Icon(Icons.add, size: 28),
      ),
    );
  }
}
