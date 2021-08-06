import '../../dao/entity.dart';

class ComercialPlaceEntity implements Entity {
  int id;
  String description;
  String address;

  ComercialPlaceEntity(
    this.id,
    this.description,
    this.address,
  );

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    address = json['address'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['address'] = this.address;
    return data;
  }

  @override
  String toString(){
    return 'ComercialPlaceEntity{id: $id, description: $description, address: $address}';
  }
}
