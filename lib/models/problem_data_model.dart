class ProblemData {
  String? problem;
  List? accountablePeople;
  String? urgency;
  String? urlDownload;
  String? problemId;

  ProblemData();

  Map<String, dynamic> toJson() => {
        "problem": problem,
        "accountablePeople": accountablePeople,
        "urgency": urgency,
        "urlDownload": urlDownload,
        "problemId": problemId
      };

  ProblemData.fromSnapshot(snapshot)
      : problem = snapshot.data()["problem"],
        accountablePeople = snapshot.data()["accountablePeople"].toList(),
        urgency = snapshot.data()["urgency"],
        urlDownload = snapshot.data()["urlDownload"],
        problemId = snapshot.data()["problemId"];
}
