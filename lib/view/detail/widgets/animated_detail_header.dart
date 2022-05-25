import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:visit_app/extensions/text_theme_x.dart';

import '../../../models/place.dart';
import '../../../view/detail/widgets/place_images_page_view.dart';
import '../../../view/widgets/gradient_status_tag.dart';

class AnimatedDetailHeader extends StatelessWidget {
  const AnimatedDetailHeader(
      {Key? key,
      required this.place,
      required this.topPercent,
      required this.bottomPercent})
      : super(key: key);

  final TravelPlace place;
  final double topPercent;
  final double bottomPercent;

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final imagesUrl = place.imagesUrl;
    print(bottomPercent);
    return Stack(
      fit: StackFit.expand,
      children: [
        Hero(
          tag: place.id,
          child: ClipRect(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: (20 + topPadding) * (1 - bottomPercent),
                    bottom: 160 * (1 - bottomPercent),
                  ),
                  child: Transform.scale(
                    scale: lerpDouble(1, 1.3, bottomPercent)!,
                    child: PlaceImagesPageView(imagesUrl: imagesUrl),
                  ),
                ),
                Positioned(
                    top: topPadding,
                    left: -60 * (1 - bottomPercent),
                    child: const BackButton(
                      color: Colors.white,
                    )),
                Positioned(
                  top: topPadding,
                  right: -60 * (1 - bottomPercent),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: lerpDouble(-100, 140, topPercent)!
                      .clamp(topPadding + 10, 140),
                  left: lerpDouble(100, 20, topPercent)!.clamp(20.0, 50.0),
                  right: 20,
                  child: AnimatedOpacity(
                    duration: kThemeAnimationDuration,
                    opacity: bottomPercent < 1 ? 0 : 1,
                    child: Text(
                      place.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            lerpDouble(0, 40, topPercent)!.clamp(20.0, 40.0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 200,
                  child: AnimatedOpacity(
                    duration: kThemeAnimationDuration,
                    opacity: bottomPercent < 1 ? 0 : 1,
                    child: Opacity(
                      opacity: topPercent,
                      child: GradientStatusTag(
                        statusTag: place.statusTag,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
            top: null,
            bottom: -140 * (1 - topPercent),
            child: TranslateAnimation(
                child: _LikesAndSharesContainer(place: place))),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 10,
          ),
        ),
        Positioned.fill(
            top: null,
            child: TranslateAnimation(child: _UserInfoContainer(place: place))),
      ],
    );
  }
}

class _LikesAndSharesContainer extends StatelessWidget {
  _LikesAndSharesContainer({Key? key, required this.place}) : super(key: key);

  final TravelPlace place;
  bool isLiked = false;
  int likeCount = 17;

  @override
  Widget build(BuildContext context) {
    double size = 26;

    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.black,
              onSurface: Colors.red,
              textStyle: context.subtitle1,
              shape: const StadiumBorder(),
            ),
            icon: Icon(
              CupertinoIcons.heart,
              size: size,
            ),
            label: Text(place.likes.toString()),
          ),
          TextButton.icon(
            onPressed: () async {
              Share.share('$AnimatedDetailHeader()');
            },
            style: TextButton.styleFrom(
              primary: Colors.black,
              textStyle: context.subtitle1,
              shape: const StadiumBorder(),
            ),
            icon: const Icon(
              CupertinoIcons.reply,
              size: 26,
            ),
            label: Text(place.shared.toString()),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue.shade100,
              primary: Colors.blue.shade600,
              textStyle: context.subtitle1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            icon: const Icon(
              Icons.check_circle_outline,
              size: 26,
            ),
            label: const Text('Checkin'),
          ),
        ],
      ),
    );
  }
}

// class LikeButton extends StatefulWidget {
//
//    LikeButton({Key? key, required int size, required CountPostion countPostion, required likeCount}) : super(key: key);
//
//   @override
//   State<LikeButton> createState() => _LikeButtonState();
// }
//
// class _LikeButtonState extends State<LikeButton> {
//   int size=50;
//   int numberOflikes=40;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: LikeButton(
//           size:size,
//         likeCount:numberOflikes,
//         countPostion:CountPostion.bottom,
//
//
// ),
//
//     );
//   }
// }

class TranslateAnimation extends StatelessWidget {
  const TranslateAnimation({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1, end: 0),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOutBack,
      builder: (context, value, child) {
        return Transform.translate(
            offset: Offset(0, 100 * value), child: child);
      },
      child: child,
    );
  }
}

class _UserInfoContainer extends StatelessWidget {
  const _UserInfoContainer({Key? key, required this.place}) : super(key: key);

  final TravelPlace place;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(place.user.urlPhoto),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(place.user.name, style: context.bodyText1),
              Text('yesterday at 9:10 p.m.',
                  style: context.bodyText1.copyWith(color: Colors.grey)),
            ],
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.blue.shade600,
              textStyle: context.subtitle1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            child: const Text('+Follow'),
          ),
        ],
      ),
    );
  }
}
