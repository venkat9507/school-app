class PersonModel {
  String email;
  String uid;
  String username;
  DateTime timestamp;

  PersonModel({this.email, this.uid, this.username, this.timestamp});

  Map toMap(PersonModel person) {
    var data = Map<String, dynamic>();

    data["uid"] = person.uid;
    data["username"] = person.username;
    data["email"] = person.email;
    data["timestamp"] = person.timestamp;

    return data;
  }

  PersonModel.fromMap(Map<String, dynamic> mapData) {
    this.uid = mapData["uid"];
    this.username = mapData["username"];
    this.email = mapData["email"];
  }
}