import 'package:cached_network_image/cached_network_image.dart';
import 'package:devmod_app/app/shared/models/event_model.dart';
import 'package:devmod_app/app/shared/tools/format.dart';
import 'package:flutter/material.dart';

class EventCardWidget extends StatelessWidget {
  final EventModel event;

  const EventCardWidget({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      borderOnForeground: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              topRight: Radius.circular(6),
            ),
            child: Visibility(
              visible: event.image != null,
              child: CachedNetworkImage(
                imageBuilder: (context, imageProvider) => Container(
                  height: 186,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black12, BlendMode.colorBurn),
                    ),
                  ),
                ),
                imageUrl: event.image,
                placeholder: (context, url) => LinearProgressIndicator(),
                errorWidget: (context, url, error) => Container(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        event.startsAt.day.toString().padLeft(2, '0'),
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(Format.month(event.startsAt).toUpperCase()),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          event.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(event.category),
                            Text(
                                '${Format.time(event.startsAt)} - ${Format.time(event.endsAt)}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
