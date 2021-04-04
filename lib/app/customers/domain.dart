

class Customer{
  final int id;
  final String firstName;
  final String lastName;

  Customer({this.id, this.firstName, this.lastName});

  factory Customer.fromJson(Map<String, dynamic> json){
    return Customer(
    id: json['id'],
    firstName: json['firstName'],
    lastName: json['lastName']
    );
  }
}