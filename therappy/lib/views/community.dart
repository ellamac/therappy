import 'package:flutter/material.dart';
import 'package:therappy/widgets/inner_shadow_card.dart';
import 'package:therappy/widgets/community_post_widget.dart';

/* Topbar - main content from views - bottom bar */
class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /* COMMUNITY TITLE */
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          children: const [
            Icon(Icons.arrow_back),
            Text("Community Feed"),
            Spacer()
          ],
        ),
        /* COMMUNITY FEED*/
        InnerShadowCard(
            child: SizedBox(
          height: 500,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            /* COMMUNITY FEED POSTS */
            children: const <Widget>[
              PostWidget(
                  name: 'Merja Järvinen',
                  message:
                      'I just completed 30min of strength and balance training!',
                  isSelf: true),
              PostWidget(
                  name: 'Heikki Hämäläinen',
                  message: 'Great job Merja!',
                  isSelf: false),
              PostWidget(
                  name: 'Emma Smith',
                  message:
                      'I just updated everyone\'s therapy plans, please check them.',
                  isSelf: false),
              PostWidget(
                  name: 'Merja Järvinen',
                  message: 'Thanks for letting us know Emma!',
                  isSelf: true),
              PostWidget(
                  name: 'Merja\'s Daughter',
                  message: 'Doing fantastic Mom! Keep up the hard work.',
                  isSelf: false),
              PostWidget(
                  name: 'Heikki Hämäläinen',
                  message: 'I just mastered some leg exercises!',
                  isSelf: false)
            ],
          ),
        )),
        /*New post button*/
        ElevatedButton(
          onPressed: () {},
          child: const Text('New Post'),
        )
      ],
    );
  }
}
