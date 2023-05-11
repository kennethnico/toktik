import 'package:flutter/material.dart';
import '../../../domain/entities/video_post.dart';

class VideoButton extends StatelessWidget {
  final VideoPost video;
  const VideoButton({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: video.likes, iconData: Icons.favorite, iconColor: Colors.red),
        _CustomIconButton(
            value: video.views, iconData: Icons.reviews, iconColor: Colors.blue),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;
  const _CustomIconButton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {}, 
          icon: Icon(iconData, color: color,)
        ),
        Text('$value'),
      ],
    );
  }
}
