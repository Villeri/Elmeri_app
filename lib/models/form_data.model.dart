class Data {
  String? names;
  String? room;
  String? allOk;
  String? allNotOk;
  String? index;
  DateTime? created;

  Data();

  Map<String, dynamic> toJson() => {
        "names": names,
        "room": room,
        "allOk": allOk,
        "allNotOk": allNotOk,
        "index": index,
        "created": created,
      };

  Data.fromSnapshot(snapshot)
      : names = snapshot.data()["names"],
        room = snapshot.data()["room"],
        allOk = snapshot.data()["allOk"],
        allNotOk = snapshot.data()["allNotOk"],
        index = snapshot.data()["index"],
        created = snapshot.data()["created"].toDate();
}
