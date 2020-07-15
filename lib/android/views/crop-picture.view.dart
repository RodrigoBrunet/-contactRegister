import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_crop/image_crop.dart';

class CropPictureView extends StatefulWidget {
  final String path;

  CropPictureView({
    @required this.path,
  });

  @override
  _CropPictureViewState createState() => _CropPictureViewState();
  
}

class _CropPictureViewState extends State<CropPictureView> {
  final cropKey = GlobalKey<CropState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recortar imagem'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Crop(
        key: cropKey,
        image: FileImage(
          File(widget.path),
        ),
        aspectRatio: 1 / 1,
      ),
    );
  }
}