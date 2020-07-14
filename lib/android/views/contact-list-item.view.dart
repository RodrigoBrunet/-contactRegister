import 'dart:io';

import 'package:contact/android/views/details.view.dart';
import 'package:contact/models/contact.model.dart';
import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  
  ContactListItem({
    @required this.model
  });
  
  final ContactModel model;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      
          leading: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: model.image == null ? 
                AssetImage('assets/images/profile-picture.png'): FileImage(
                  File(model.image),
                ),
                ),
            ),
          ),
          title: Text(model.name),
          subtitle: Text(model.phone),
          trailing: FlatButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailsView(
                    id: model.id,
                  ),
                ),
              );
            }, 
            child: Icon(
              Icons.person,
              color: Theme.of(context).primaryColor,
            ),
          ),
        
    );
  }
}