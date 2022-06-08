import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:visit_app/extensions/text_theme_x.dart';
import 'package:visit_app/view/detail/widgets/place_comments_widget.dart';

import '../../models/place.dart';
import '../../view/detail/widgets/animated_detail_header.dart';

class PlaceDetailScreen extends StatefulWidget {
  const PlaceDetailScreen(
      {Key? key, required this.place, required this.screenHeigh})
      : super(key: key);

  final TravelPlace place;
  final double screenHeigh;

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  late ScrollController _controller;
  late ValueNotifier<double> bottomPercentNotifier;
  bool _isAnimatingScroll = false;

  void _scrollListener() {
    var percent =
        _controller.position.pixels / MediaQuery.of(context).size.height;
    bottomPercentNotifier.value = (percent / .3).clamp(0.0, 1.0);
  }

  void _isScrollingListener() {
    var percent = _controller.position.pixels / widget.screenHeigh;
    if (!_controller.position.isScrollingNotifier.value) {
      if (percent < .3 && percent > .1) {
        setState(() => _isAnimatingScroll = true);
        _controller
            .animateTo(widget.screenHeigh * .3,
                duration: kThemeAnimationDuration, curve: Curves.decelerate)
            .then((value) => setState(() => _isAnimatingScroll = false));
      }
      if (percent < .1 && percent > 0) {
        setState(() => _isAnimatingScroll = true);
        _controller
            .animateTo(0,
                duration: kThemeAnimationDuration, curve: Curves.decelerate)
            .then((value) => setState(() => _isAnimatingScroll = false));
      }
      if (percent < .5 && percent > .3) {
        setState(() => _isAnimatingScroll = true);
        _controller
            .animateTo(widget.screenHeigh * .3,
                duration: kThemeAnimationDuration, curve: Curves.decelerate)
            .then((value) => setState(() => _isAnimatingScroll = false));
      }
    }
  }

  @override
  void initState() {
    _controller =
        ScrollController(initialScrollOffset: widget.screenHeigh * .3);
    _controller.addListener(_scrollListener);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.position.isScrollingNotifier
          .addListener(_isScrollingListener);
    });
    bottomPercentNotifier = ValueNotifier(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final moviesRef = FirebaseFirestore.instance
        .collection('firestore-example-app')
        .withConverter<TravelPlaces>(
          fromFirestore: (snapshots, _) =>
              TravelPlaces.fromJson(snapshots.data()!),
          toFirestore: (movie, _) => movie.toJson(),
        );
    return Scaffold(
      body: Stack(
        children: [
          AbsorbPointer(
            absorbing: _isAnimatingScroll,
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _controller,
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: BuilderPersistentDelegate(
                      maxExtent: MediaQuery.of(context).size.height,
                      minExtent: 240,
                      builder: (percent) {
                        final bottomPercent = (percent / .3).clamp(0.0, 1.0);
                        return AnimatedDetailHeader(
                            topPercent: ((1 - percent) / .7).clamp(0.0, 1.0),
                            bottomPercent: bottomPercent,
                            place: widget.place);
                      }),
                ),
                SliverToBoxAdapter(
                  child: TranslateAnimation(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(widget.place.description),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemExtent: 150,
                        itemCount: TravelPlace.collectionPlaces.length,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        itemBuilder: (context, index) {
                          final collectionPlace =
                              TravelPlace.collectionPlaces[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  collectionPlace.imagesUrl.first,
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                ),
                StreamBuilder<QuerySnapshot<TravelPlaces>>(
                    stream: moviesRef.snapshots(),
                    builder: (context, snapshot)
                    {
                      return ListView.builder(
                          itemCount: snapshot.data?.size,
                          itemExtent: 350,
                          physics:  BouncingScrollPhysics(),
                          padding:  EdgeInsets.fromLTRB(
                              20, 0, 20, kToolbarHeight + 20),
                          itemBuilder: (context, index) {
                            final item = snapshot.data!.docs[index].data();

                            return Text(item.toString());
                          });
                    }),
                // SliverToBoxAdapter(
                //   child: SizedBox(
                //     height: 150,
                //   ),
                // )
              ],
            ),
          ),
          ValueListenableBuilder<double>(
            valueListenable: bottomPercentNotifier,
            builder: (context, value, child) {
              return Positioned.fill(
                top: null,
                bottom: -130 * (1 - value),
                child: child!,
              );
            },
            child: const PlaceCommentsWidget(),
          ),
        ],
      ),
    );
  }
}

class BuilderPersistentDelegate extends SliverPersistentHeaderDelegate {
  BuilderPersistentDelegate({
    required double maxExtent,
    required double minExtent,
    required this.builder,
  })  : _maxExtent = maxExtent,
        _minExtent = minExtent;

  final double _maxExtent;
  final double _minExtent;
  final Widget Function(double percent) builder;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return builder(shrinkOffset / _maxExtent);
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
