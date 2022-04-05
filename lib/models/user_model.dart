
import 'package:flutter/material.dart';

class User with ChangeNotifier {
  final String? id;
  final String? name;
  User( 
      { this.id,
       this.name,
      });


  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(name != null){
      result.addAll({'name': name});
    }
  
    return result;
  }





}
