import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:food_recpie_app/utils/colors.dart';
import 'package:food_recpie_app/widgets/food_item_card.dart';

class Ingredient extends StatefulWidget {
  const Ingredient({Key? key}) : super(key: key);

  @override
  _IngredientState createState() => _IngredientState();
}

class _IngredientState extends State<Ingredient> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        controller: controller,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: PreferredSize(
                child: Container(
                  color: formText,
                  height: 10,
                ),
                preferredSize: const Size.fromHeight(10.0)),
            collapsedHeight: 90,
            flexibleSpace: const _MyAppSpace(),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.446,
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: Colors.white,
                child: const FoodItemCard(),
              );
            }, childCount: 6),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                childAspectRatio: 0.60),
          )
        ],
      ),
    );
  }
}

class _MyAppSpace extends StatelessWidget {
  const _MyAppSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaExtent = settings!.maxExtent - settings.minExtent;
        final t =
            (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                .clamp(0.0, 1.0);
        final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

        return Stack(
          children: [
            Center(
              child: Opacity(
                opacity: 1 - opacity,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      const ImageIcon(
                        AssetImage('assets/icons/back.png'),
                        color: mainText,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        height: 60.0,
                        width: 60.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/f3.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        'Ingredient',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 22,
                          color: mainText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: opacity,
              child: FlexibleSpaceBar(
                background: Column(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
                        //margin: const EdgeInsets.only(bottom: 10),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const ImageIcon(
                                  AssetImage('assets/icons/back.png'),
                                  color: mainText,
                                ),
                                Expanded(
                                    child: Container(
                                  margin: const EdgeInsets.only(right: 30),
                                  child: const Text(
                                    'Ingredient',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'InterBold',
                                      fontSize: 22,
                                      color: mainText,
                                    ),
                                  ),
                                )),
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 30, top: 25),
                              width: 200,
                              height: 200,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/f3.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Text(
                              'Pancakes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'InterBold',
                                fontSize: 22,
                                color: mainText,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
