import 'dart:ui';

class Note
{
  int? id;
  String title;
  String connent;
  Color color;
  final DateTime createdAt;
  DateTime modifiedAt;

  Note.fromDbData(this.id, this.title, this.connent, this.color, DateTime createdAt, DateTime modifiedAt):
  createdAt = createdAt ?? DateTime.now(),
  modifiedAt = modifiedAt ?? DateTime.now();

  Note.fromInputData(this.title, this.connent, this.color): 
  createdAt = DateTime.now(),
  modifiedAt = DateTime.now();

  
}
