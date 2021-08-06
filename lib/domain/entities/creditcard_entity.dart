import '../../dao/entity.dart';

class CreditCardEntity implements Entity {
  int id;
  String cardtitle;
  String finaldigits;
  String bestbuydate;
  String flag;
  double valuelimit;
  double availablelimit;
  double usedlimit;

  CreditCardEntity(
      this.id,
      this.cardtitle,
      this.finaldigits,
      this.bestbuydate,
      this.flag,
      this.valuelimit,
      this.availablelimit,
      this.usedlimit);

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    cardtitle = json['cardtitle'];
    finaldigits = json['finaldigits'];
    bestbuydate = json['bestbuydate'];
    flag = json['flag'];
    valuelimit = json['valuelimit'];
    availablelimit = json['availablelimit'];
    usedlimit = json['usedlimit'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cardtitle'] = this.cardtitle;
    data['finaldigits'] = this.finaldigits;
    data['bestbuydate'] = this.bestbuydate;
    data['flag'] = this.flag;
    data['valuelimit'] = this.valuelimit;
    data['availablelimit'] = this.availablelimit;
    data['usedlimit'] = this.usedlimit;
    return data;
  }

  @override
  String toString(){
    return 'CreditCardEntity{id: $id, cardtitle: $cardtitle, finaldigits: $finaldigits, bestbuydate: $bestbuydate, flag: $flag, valuelimit: $valuelimit, availablelimit: $availablelimit, usedlimit: $usedlimit}';
  }
}