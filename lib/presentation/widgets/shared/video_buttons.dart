import 'package:flutter/material.dart';
import '../../../config/helpers/human_formats.dart';
import '../../../domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video; //Recibe el video
  const VideoButtons({super.key, required this.video}); //SE agrega la propiedad al constructor

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton( //Botones personalizados 
            value: video.likes, iconData: Icons.favorite, iconColor: Colors.red),
        _CustomIconButton(
            value: video.views, iconData: Icons.remove_red_eye),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget { //_ india que es privado para el archivo
  final int value;
  final IconData iconData;
  final Color? color;
  const _CustomIconButton({
    required this.value, 
    required this.iconData, 
    iconColor
    }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {}, 
          icon: Icon(iconData, color: color, size: 30,)
        ),
        Text(HumanFormats.humanReadableNumber(value.toDouble())),
      ],
    );
  }
}
