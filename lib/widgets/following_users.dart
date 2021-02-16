import 'package:flutter/material.dart';
import 'package:flutter_social_ui/data/data.dart';
import 'package:flutter_social_ui/models/user_model.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(
            "Following",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2.0),
          ),
        ),
        Container(
          height: 80,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                User user = users[index];
                return UserItem(user: user);
              }),
        )
      ],
    );
  }
}

class UserItem extends StatelessWidget {
  const UserItem({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black54, offset: Offset(0, 2), blurRadius: 6.0)
            ],
            border:
                Border.all(width: 2.0, color: Theme.of(context).primaryColor)),
        child: ClipOval(
          child: Image(
            height: 60,
            width: 60,
            image: AssetImage(user.profileImageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
