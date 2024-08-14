import 'package:flutter/material.dart';
import 'package:slivers_demo_flutter/pages/fitness_tracker/avatar.dart';
import 'package:slivers_demo_flutter/pages/fitness_tracker/models/user.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.0),
        Avatar(photoUrl: user.photoUrl, key: null,),
        SizedBox(height: 8.0),
        if (user.displayName != null) ...[
          Text(
            user.displayName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 8.0),
        ],
        if (user.username != null) ...[
          Text(
            user.username,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(height: 8.0),
        ],
      ],
    );
  }
}
