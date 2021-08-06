import '../../dao/entity.dart';

class ExpenseEntity implements Entity{
  int id;
  String type;
  String description;
  int commercialplaceid;
  int categoryid;
  int paymentid;
  int installment;
  String date;
  String duedate;
  double value;

  ExpenseEntity(
      this.id,
      this.type,
      this.description,
      this.commercialplaceid,
      this.categoryid,
      this.paymentid,
      this.installment,
      this.date,
      this.duedate,
      this.value);

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    description = json['description'];
    commercialplaceid = json['commercialplaceid'];
    categoryid = json['categoryid'];
    paymentid = json['paymentid'];
    installment = json['installment'];
    date = json['date'];
    duedate = json['duedate'];
    value = json['value'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['description'] = this.description;
    data['commercialplaceid'] = this.commercialplaceid;
    data['categoryid'] = this.categoryid;
    data['paymentid'] = this.paymentid;
    data['installment'] = this.installment;
    data['date'] = this.date;
    data['duedate'] = this.duedate;
    data['value'] = this.value;
    return data;
  }

  @override
  String toString(){
    return 'CreditCardEntity{id: $id, type: $type, description: $description, commercialplaceid: $commercialplaceid, categoryid: $categoryid, paymentid: $paymentid, installment: $installment, date: $date, duedate: $duedate, value: $value}';
  }
}