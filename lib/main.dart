import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 建立AppBar
    final appBar = AppBar(
      title: Text('photoview'),
    );

    // 建立App的操作畫面

    final widget = GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/5/58/Shiba_inu_taiki.jpg'),
              enableRotation: false,
              maxScale: PhotoViewComputedScale.covered,
              minScale: PhotoViewComputedScale.contained * 0.6,
              backgroundDecoration: BoxDecoration(color: Colors.white),
            )
            // color: Colors.teal[100],
            ),
        Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(
                  'https://storage.googleapis.com/www-cw-com-tw/article/201810/article-5bd182cf13ebb.jpg'),
              enableRotation: false,
              maxScale: PhotoViewComputedScale.covered,
              minScale: PhotoViewComputedScale.contained * 0.6,
              backgroundDecoration: BoxDecoration(color: Colors.white),
            )
            // color: Colors.teal[100],
            ),
        Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/1/1f/Oryctolagus_cuniculus_Rcdo.jpg'),
              enableRotation: false,
              maxScale: PhotoViewComputedScale.covered,
              minScale: PhotoViewComputedScale.contained * 0.6,
              backgroundDecoration: BoxDecoration(color: Colors.white),
            )
            // color: Colors.teal[100],
            ),
        Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(
                  'https://www.collinsdictionary.com/images/full/hamster_102645029.jpg'),
              enableRotation: false,
              maxScale: PhotoViewComputedScale.covered,
              minScale: PhotoViewComputedScale.contained * 0.6,
              backgroundDecoration: BoxDecoration(color: Colors.white),
            )
            // color: Colors.teal[100],
            ),
        Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/lionel-animals-to-follow-on-instagram-1568319926.jpg?crop=0.922xw:0.738xh;0.0555xw,0.142xh&resize=640:*'),
              enableRotation: false,
              maxScale: PhotoViewComputedScale.covered,
              minScale: PhotoViewComputedScale.contained * 0.6,
              backgroundDecoration: BoxDecoration(color: Colors.white),
            )
            // color: Colors.teal[100],
            ),
        Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(
                  'https://www.niusnews.com/upload/imgs/default/202109_____Choco/0915/dog-4988985_1280.jpg'),
              enableRotation: false,
              maxScale: PhotoViewComputedScale.covered,
              minScale: PhotoViewComputedScale.contained * 0.6,
              backgroundDecoration: BoxDecoration(color: Colors.white),
            )
            // color: Colors.teal[100],

            ),
        Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(
                  'https://i.chzbgr.com/full/9146605568/h37207BF2/upsidedown-mammal-sloth'),
              enableRotation: false,
              maxScale: PhotoViewComputedScale.covered,
              minScale: PhotoViewComputedScale.contained * 0.6,
              backgroundDecoration: BoxDecoration(color: Colors.white),
            )
            // color: Colors.teal[100],

            ),
        Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(
                  'https://media-cdn.tripadvisor.com/media/photo-s/15/cb/7d/7d/fox.jpg'),
              enableRotation: false,
              maxScale: PhotoViewComputedScale.covered,
              minScale: PhotoViewComputedScale.contained * 0.6,
              backgroundDecoration: BoxDecoration(color: Colors.white),
            )
            // color: Colors.teal[100],

            ),
      ],
    );

    // 結合AppBar和App操作畫面
    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );

    return appHomePage;
  }
}
