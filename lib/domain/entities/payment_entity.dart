import '../../dao/entity.dart';

class PaymentEntity implements Entity {
  int id;
  String description;
  String type;

  PaymentEntity(
    this.id,
    this.description,
    this.type,
  );

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    type = json['type'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['type'] = this.type;
    return data;
  }

  @override
  String toString(){
    return 'PaymentEntity{id: $id, description: $description, type: $type}';
  }
}
