import 'package:flutter/material.dart';
import '../screens/profile.dart';
import '../utils/colors.dart';

class NotificationTileFollow extends StatefulWidget {
  const NotificationTileFollow({Key? key}) : super(key: key);

  @override
  _NotificationTileFollowState createState() => _NotificationTileFollowState();
}

class _NotificationTileFollowState extends State<NotificationTileFollow> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/p1.jpg'),
      ),
      title: InkWell(
        child: const Text(
          'Dean Winchester',
          style: TextStyle(
            fontFamily: 'InterBold',
            fontSize: 15,
            color: mainText,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Profile()),
          );
        },
      ),
      subtitle: const Text(
        'now following you • 1h',
        style: TextStyle(
          fontFamily: 'InterMedium',
          fontSize: 12,
          color: secondaryText,
        ),
      ),
      trailing: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.fromLTRB(20, 12, 20, 12),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0))),
          backgroundColor: MaterialStateProperty.all(primaryColor),
        ),
        child: const Text(
          'Follow',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'InterMedium',
          ),
        ),
      ),
    );
  }
}

class NotificationTileLike extends StatefulWidget {
  const NotificationTileLike({Key? key}) : super(key: key);

  @override
  _NotificationTileLikeState createState() => _NotificationTileLikeState();
}

class _NotificationTileLikeState extends State<NotificationTileLike> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 22, 0),
      child: Card(
        elevation: 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 66,
              height: 76,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/images/p1.jpg',
                          height: 56, width: 56),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/images/p2.jpg',
                          height: 56, width: 56),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(
                        child: const Text(
                          'John Steve',
                          style: TextStyle(
                            fontFamily: 'InterBold',
                            fontSize: 15,
                            color: mainText,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Profile()),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        'and',
                        style: TextStyle(
                          fontFamily: 'InterMedium',
                          fontSize: 15,
                          color: secondaryText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  InkWell(
                    child: const Text(
                      'Sam Winchester',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontSize: 15,
                        color: mainText,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'liked your recipe • 20 min',
                    style: TextStyle(
                      fontFamily: 'InterMedium',
                      fontSize: 12,
                      color: secondaryText,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
                child: SizedBox(
              width: double.infinity,
            )),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/landscape.jpeg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTileFollowed extends StatefulWidget {
  const NotificationTileFollowed({Key? key}) : super(key: key);

  @override
  _NotificationTileFollowedState createState() =>
      _NotificationTileFollowedState();
}

class _NotificationTileFollowedState extends State<NotificationTileFollowed> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/p1.jpg'),
      ),
      title: InkWell(
        child: const Text(
          'Dean Winchester',
          style: TextStyle(
            fontFamily: 'InterBold',
            fontSize: 15,
            color: mainText,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Profile()),
          );
        },
      ),
      subtitle: const Text(
        'now following you • 1h',
        style: TextStyle(
          fontFamily: 'InterMedium',
          fontSize: 12,
          color: secondaryText,
        ),
      ),
      trailing: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.fromLTRB(20, 12, 20, 12),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0))),
          backgroundColor: MaterialStateProperty.all(formText),
        ),
        child: const Text(
          'Followed',
          style: TextStyle(
            color: mainText,
            fontSize: 12,
            fontFamily: 'InterMedium',
          ),
        ),
      ),
    );
  }
}
