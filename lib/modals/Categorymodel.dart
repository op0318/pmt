import 'dart:convert';

class Categeorymodel
{
 final String id;
 final String name;
 final String image;
 final String language;
 final String lastupdated;

 Categeorymodel({
   required this.id,
   required this.name,
   required this.image,
   required this.language,
   required this.lastupdated
 });


//convert your data to json object
 Map<String,dynamic>Categorymodaltojson()
 {
return {
  'id':id,
  'name':name,
'image':image,
'language':language,
  'lastupdated':lastupdated
  };}

  Map<String,dynamic> get modal=>Categorymodaltojson();


}