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
const images = <String>[
  'assets/image1.jpg',
  'assets/image2.jpg',
  'assets/image3.jpg',
  'assets/image4.jpg',
  'assets/image5.jpg',
  'assets/image6.jpg',
  'assets/image7.jpg',
  'assets/image8.jpg',
];


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
              imageProvider: AssetImage(
                'assets/image1.jpg'),
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
              imageProvider: AssetImage(
                  'assets/image2.jpg'),
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
              imageProvider: AssetImage(
                  'assets/image3.jpg'),
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
              imageProvider: AssetImage(
                  'assets/image4.jpg'),
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
              imageProvider: AssetImage(
                  'assets/image5.jpg'),
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
              imageProvider: AssetImage(
                  'assets/image6.jpg'),
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
              imageProvider:AssetImage(
                  'assets/image7.jpg'),
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
              imageProvider:AssetImage(
                  'assets/image8.jpg'),
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