// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Tasbeeh_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TasbeehModelAdapter extends TypeAdapter<TasbeehModel> {
  @override
  final int typeId = 0;

  @override
  TasbeehModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TasbeehModel(
      name: fields[0] as String,
      count: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TasbeehModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TasbeehModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
