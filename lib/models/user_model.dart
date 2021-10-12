class UserModel {
  String? uid;
  String? email;
  String? prenom;
  String? nom;
  String? adresse;

  UserModel({this.uid, this.email, this.prenom, this.nom, this.adresse});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        prenom: map['prenom'],
        nom: map['nom'],
        adresse: map['adresse']);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'prenom': prenom,
      'nom': nom,
      'adresse': adresse,
    };
  }
}
