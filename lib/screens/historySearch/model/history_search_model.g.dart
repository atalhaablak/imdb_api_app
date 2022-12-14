// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_search_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HistorySearchModelAdapter extends TypeAdapter<HistorySearchModel> {
  @override
  final int typeId = 0;

  @override
  HistorySearchModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HistorySearchModel(
      word: fields[0] as String,
      date: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, HistorySearchModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.word)
      ..writeByte(1)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HistorySearchModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
