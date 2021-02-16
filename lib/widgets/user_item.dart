import 'package:flutter/material.dart';
import 'package:flutter_social_ui/models/user_model.dart';

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
