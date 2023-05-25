import 'package:flutter/material.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

import '../../../domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder( //Builder construye bajo demanda.
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: videos.length, //¿Cuántos elementos tengo? Siempre recibo un listado de videos
        itemBuilder: (context, index) {
          final VideoPost videoPost = videos[index];

          return Stack(
            children: [
              //Videoplayer
              //Gradiente
              //Botones
              Positioned( //Widget que trabaja junto a Stack para posicionar elementos/widgets
                bottom: 20,
                right: 5,
                child: VideoButtons(video: videoPost)
                )
            ],
          );
        });
  }
}
