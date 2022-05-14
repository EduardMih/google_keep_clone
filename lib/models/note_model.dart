import 'dart:ui';

import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 1)
class Note
{
  @HiveField(0)
  int? id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String content;

  @HiveField(3)
  int color;

  @HiveField(4)
  final DateTime createdAt;

  @HiveField(5)
  DateTime modifiedAt;

  Note(this.id, this.title, this.content, this.color, this.createdAt, this.modifiedAt);

  Note.fromDbData(this.id, this.title, this.content, this.color, DateTime? createdAt, DateTime? modifiedAt):
  createdAt = createdAt ?? DateTime.now(),
  modifiedAt = modifiedAt ?? DateTime.now();

  Note.fromInputData(this.title, this.content, this.color): 
  createdAt = DateTime.now(),
  modifiedAt = DateTime.now();

  
}
