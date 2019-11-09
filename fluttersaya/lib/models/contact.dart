class Contact {
  int _id;
  String _name;
  String _phone;
  String _alamat;
  String _email;

  // konstruktor versi 1
  Contact(this._name, this._phone, this._alamat, this._email);

  // konstruktor versi 2: konversi dari Map ke Contact
  Contact.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._phone = map['phone'];
    this._alamat = map['alamat'];
    this._email = map['email'];
  }
  //getter dan setter (mengambil dan mengisi data kedalam object)
  // getter
  int get id => _id;
  String get name => _name;
  String get phone => _phone;
  String get alamat => _alamat;
  String get email => _email;

  // setter 
  set name(String value) {
    _name = value;
  }

  set phone(String value) {
    _phone = value;
  }

  set alamat(String value) {
    _alamat = value;
  }

  set email(String value){
    _email = value;
  }



  // konversi dari Contact ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['phone'] = phone;
    map['alamat'] = alamat;
    map['email'] = email;
    return map;
  }  

}