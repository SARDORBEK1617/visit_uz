import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/place.dart';
import '../../view/feed/widgets/place_card.dart';
import '../../view/feed/widgets/travel_navigation_bar.dart';
import '../detail/faq_page.dart';
import '../detail/place_detail_screen.dart';

import 'map_screen.dart';

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
  bool _isSearching = false;
  String searchQuery = "Search query";

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
                  this.actionIcon = Icon(Icons.search,color: Color(0xff202053));
                  this.appBarTitle = Text("Visit uz",style: TextStyle(color: Color(0xff202053)),);
                  //this.leading = Icon(Icons.star_border);
                }
              },
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: ()    => Navigator.of(context).push(
             MaterialPageRoute(builder: (context) => const FaqPage()),),
            icon: Icon(CupertinoIcons.star,color: Color(0xff202053)),
          ),
        ],
      ),
      //     leading: _isSearching ? const BackButton() : Container(),
      //     title: _isSearching ? _buildSearchField() : Text("Search"),
      //     actions: _buildActions(),
      //     title: const Text('Visit Uz'),
      //     leading: IconButton(
      //       onPressed: () {
      //
      //       },
      //       icon: const Icon(CupertinoIcons.search),
      //     ),
      //     actions: [
      //       IconButton(
      //         onPressed: () {
      //           icon: actionIcon,
      //           onPressed:(){
      //             setState((){
      //               if(this.actionIcon.icon==Icons.search)
      //                 {
      //                   this.actionIcon=new Icon(Icons.close);
      //                   this.appBarTitle=new TextField(
      //                 style: TextStyle(
      //                 color: Colors.white
      //                 ),
      //                 decoration: InputDecoration(prefixIcon: Icon(Icons.search,color: Colors.white,)),
      //                 );
      //                 }
      // });
      // },

      //
      // ),
      //icon: const Icon(CupertinoIcons.star),
      //),
      // ],
      //  ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        onRefresh: _refresh,
        child: ListView.builder(
            itemCount: TravelPlace.places.length,
            itemExtent: 350,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20, 0, 20, kToolbarHeight + 20),
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
                            screenHeigh: MediaQuery.of(context).size.height,
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
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => NextScreen()),
        ),
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

  Widget _buildSearchField() {
    return TextField(
      controller: _searchQueryController,
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Search Data...",
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white30),
      ),
      style: TextStyle(color: Colors.white, fontSize: 16.0),
      onChanged: (query) => updateSearchQuery(query),
    );
  }

  List<Widget> _buildActions() {
    if (_isSearching) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (_searchQueryController == null ||
                _searchQueryController.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: _startSearch,
      ),
    ];
  }

  void _startSearch() {
    ModalRoute.of(context)
        ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchQueryController.clear();
      updateSearchQuery("");
    });
  }
}
