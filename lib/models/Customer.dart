import 'package:flutter_apps/models/Farm.dart';

class Customer {
  final int Id;
  final String FirstName;
  final String LastName;
  final DateTime CreatedDate;
  final String Email;
  final String Password;
  final String Phone;

  //List<Farm> Farm;

  Customer(this.Id, this.FirstName, this.LastName, this.CreatedDate, this.Email,
      this.Password, this.Phone);

}