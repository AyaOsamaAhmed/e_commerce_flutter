
import 'package:e_commerce_flutter/models/MovieModel.dart';
import 'package:flutter/material.dart';

class movieItemWidget extends StatefulWidget {
  MovieModel item ;

   movieItemWidget({super.key , required this.item});

  @override
  State<movieItemWidget> createState() => _movieItemWidgetState();
}

class _movieItemWidgetState extends State<movieItemWidget> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        /* Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  MovieDetails( item: item)),
      );*/
      },
      child: Column(
        children: [
          FadeInImage(
            image:NetworkImage('https://image.tmdb.org/t/p/w500/${widget.item.posterPath}'),
            placeholder: const AssetImage("assets/images/avatar.png"),
            imageErrorBuilder:(context, error, stackTrace) {
              return Image.asset('your_default_image_path',
                  fit: BoxFit.fitWidth
              );
            },
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        widget.item.title!,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
          )
        ],
      ),
    );;
  }
}
