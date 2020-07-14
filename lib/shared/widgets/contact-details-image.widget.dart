import 'dart:io';

import 'package:contact/shared/styles.dart';
import 'package:flutter/widgets.dart';

class ContactDetailsImage extends StatelessWidget {
  
  ContactDetailsImage({
    @required this.image,
  });

  final String image;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: basePrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(200),
      ),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: image == null ? AssetImage("assets/images/profile-picture.png") : 
            FileImage(
              File(image),
            ),
          ),
        ),
      ),
    );
  }
}