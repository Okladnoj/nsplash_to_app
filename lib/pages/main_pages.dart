import 'package:flutter/material.dart';
import 'package:nsplash_to_app/models/list_models.dart';
import 'package:nsplash_to_app/pages/detalis_page.dart';

class UserModeslContainer extends StatelessWidget {
  final UserModels userModels;

  UserModeslContainer({
    Key key,
    this.userModels,
  })  : assert(userModels != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Unsplash App'),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              children: List.generate(
                userModels.userModels.length,
                (index) {
                  return Ink.image(
                    image:
                        NetworkImage(userModels.userModels[index].pictureurl),
                    fit: BoxFit.cover,
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                        color: Colors.green.shade800.withAlpha(150),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                  userModels.userModels[index].profileimage,
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                  width: 15.0,
                                ),
                                Text(
                                  ' : ${userModels.userModels[index].name}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                            Text(
                              'Название: ${userModels.userModels[index].altdescription}',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDetalisPage(
                              assetPath: userModels.userModels[index],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('Unsplash App'),
            ),
            body: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              children: List.generate(
                userModels.userModels.length,
                (index) {
                  return Ink.image(
                    image:
                        NetworkImage(userModels.userModels[index].pictureurl),
                    fit: BoxFit.cover,
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                        color: Colors.green.shade800.withAlpha(150),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                  userModels.userModels[index].profileimage,
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                  width: 15.0,
                                ),
                                Text(
                                  ' : ${userModels.userModels[index].name}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                            Text(
                              'Название: ${userModels.userModels[index].altdescription}',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDetalisPage(
                              assetPath: userModels.userModels[index],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}
