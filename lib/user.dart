class User {
  final String id;
  final String username;
  final String email;
  final Map<String, dynamic> address; 
  final String phone;
  final String website;
  final Map<String, dynamic> company; 

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"].toString(), // Convert id to String
        username = json["username"],
        email = json["email"],
        address = json["address"],
        phone = json["phone"].toString(), // Convert phone to String
        website = json["website"],
        company = json["company"];

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'id': id,
      'email': email,
      'address': address,
      'phone': phone,
      'website': website,
      'company': company,
    };
  }
}