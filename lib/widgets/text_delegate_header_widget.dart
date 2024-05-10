import 'package:flutter/material.dart';


class TextDetegateHeaderWidget extends SliverPersistentHeaderDelegate
{
  String? title;
  TextDetegateHeaderWidget({
    this.title
});
  @override
  Widget build(BuildContext context ,double shrinkOffSet, bool overlapsContent,) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.redAccent,
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      height: 82,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(
        title.toString(),
        maxLines: 2,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 22,
          letterSpacing: 2,
          color: Colors.white70,
        ),
      ),
    );

  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 50;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
