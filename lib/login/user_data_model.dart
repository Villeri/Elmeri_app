class UserData {
  String? email;
  String? name;

  UserData();

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
      };

  UserData.fromSnapshot(snapshot)
      : email = snapshot.data()["email"],
        name = snapshot.data()["name"];
}
