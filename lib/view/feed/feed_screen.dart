import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map_launcher/map_launcher.dart';

import '../../models/place.dart';
import '../../view/feed/widgets/place_card.dart';
import '../../view/feed/widgets/travel_navigation_bar.dart';
import '../detail/faq_page.dart';
import '../detail/place_detail_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// import 'map_screen.dart';



class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Widget appBarTitle = Text("Visit uz");
  Icon actionIcon = Icon(Icons.search);

  Future<void> _refresh() {
    return Future.delayed(const Duration(seconds: 3));
  }

  final TextEditingController _searchQueryController = TextEditingController();

  //bool _isSearching = false;
  // String searchQuery = "Search query";
  openMapsSheet(context) async {
    try {
      final coords = Coords(41.3165540, 69.2483000);
      final title = "Toshkent";
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showMarker(
                          coords: coords,
                          title: title,
                        ),
                        title: Text(map.mapName),
                        leading: SvgPicture.asset(
                          map.icon,
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        leading: IconButton(
          icon: actionIcon,
          onPressed: () {
            setState(
              () {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = Icon(Icons.close);
                  this.appBarTitle = new TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.grey)),
                  );
                } else {
                  this.actionIcon =
                      Icon(Icons.search, color: Color(0xff202053));
                  this.appBarTitle = Text(
                    "Visit uz",
                    style: TextStyle(color: Color(0xff202053)),
                  );
                  //this.leading = Icon(Icons.star_border);
                }
              },
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FaqPage()),
            ),
            icon: Icon(CupertinoIcons.star, color: Color(0xff202053)),
          ),
        ],
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        onRefresh: _refresh,
        child: ListView.builder(
                  itemCount: TravelPlace.places.length,
                  itemExtent: 350,
                  physics: const BouncingScrollPhysics(),
                  padding:
                      const EdgeInsets.fromLTRB(20, 0, 20, kToolbarHeight + 20),
                  itemBuilder: (context, index) {
                    final place = TravelPlace.places[index];
                    return Hero(
                      tag: place.id,
                      child: PlaceCard(
                        place: place,
                        onPressed: () async {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, animation, __) => FadeTransition(
                                opacity: animation,
                                child: PlaceDetailScreen(
                                  place: place,
                                  screenHeigh:
                                      MediaQuery.of(context).size.height,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }),

      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => openMapsSheet(context),
        child: const Icon(Icons.location_on),
      ),
      bottomNavigationBar: TravelNavigationBar(
        onTap: (index) {},
        items: [
          TravelNavigationBarItem(
              icon: CupertinoIcons.chat_bubble,
              selectedIcon: CupertinoIcons.chat_bubble_fill),
          TravelNavigationBarItem(
              icon: CupertinoIcons.square_split_2x2,
              selectedIcon: CupertinoIcons.square_split_2x2_fill),
        ],
        currentIndex: 1,
      ),
    );
  }
}
