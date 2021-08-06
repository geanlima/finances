import '../../dao/entity.dart';

class CategoryEntity implements Entity {
  int id;
  String description;

  CategoryEntity(this.id, this.description);

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    return data;
  }

  @override
  String toString(){
    return 'CategoryEntity{id: $id, description: $description}';
  }
}