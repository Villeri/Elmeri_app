import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmeri_sovellus/pages/form_parts/form_part1_page.dart';
import 'package:elmeri_sovellus/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewFormInfoPage extends StatefulWidget {
  List accountablePeople;
  NewFormInfoPage({
    Key? key,
    required this.accountablePeople,
  }) : super(key: key);

  @override
  State<NewFormInfoPage> createState() => _NewFormInfoPageState();
}

class _NewFormInfoPageState extends State<NewFormInfoPage> {
  TextEditingController dateController = TextEditingController();

  String currentRoom = "5A102";
  List<String> allRooms = [
    "5A102",
    "5A101",
    "5A103",
    "5B103",
    "5A105",
    "5B120 & 5B122",
    "5B101 & 5B101a"
  ];

  int thingsOk1 = 0;
  int thingsNotOk1 = 0;
  int thingsOk2 = 0;
  int thingsNotOk2 = 0;
  int thingsOk3 = 0;
  int thingsNotOk3 = 0;
  int thingsOk4 = 0;
  int thingsNotOk4 = 0;
  int thingsOk5 = 0;
  int thingsNotOk5 = 0;
  int thingsOk6 = 0;
  int thingsNotOk6 = 0;
  int thingsOk7 = 0;
  int thingsNotOk7 = 0;
  int thingsOk8 = 0;
  int thingsNotOk8 = 0;
  int thingsOk9 = 0;
  int thingsNotOk9 = 0;
  int thingsOk10 = 0;
  int thingsNotOk10 = 0;
  int thingsOk11 = 0;
  int thingsNotOk11 = 0;
  int thingsOk12 = 0;
  int thingsNotOk12 = 0;
  int thingsOk13 = 0;
  int thingsNotOk13 = 0;
  int thingsOk14 = 0;
  int thingsNotOk14 = 0;
  List problemsPartOne = [];
  List accountablePeoplePartOne = [];
  List urgenciesPartOne = [];
  List imgUrlsProblemsPartOne = [];
  List<Widget> problemCardsPartOne = [];
  List problemsPartTwo = [];
  List accountablePeoplePartTwo = [];
  List urgenciesPartTwo = [];
  List imgUrlsProblemsPartTwo = [];
  List<Widget> problemCardsPartTwo = [];
  List problemsPartThree = [];
  List accountablePeoplePartThree = [];
  List urgenciesPartThree = [];
  List imgUrlsProblemsPartThree = [];
  List<Widget> problemCardsPartThree = [];
  List problemsPartFour = [];
  List accountablePeoplePartFour = [];
  List urgenciesPartFour = [];
  List imgUrlsProblemsPartFour = [];
  List<Widget> problemCardsPartFour = [];
  List problemsPartFive = [];
  List accountablePeoplePartFive = [];
  List urgenciesPartFive = [];
  List imgUrlsProblemsPartFive = [];
  List<Widget> problemCardsPartFive = [];
  List problemsPartSix = [];
  List accountablePeoplePartSix = [];
  List urgenciesPartSix = [];
  List imgUrlsProblemsPartSix = [];
  List<Widget> problemCardsPartSix = [];
  List problemsPartSeven = [];
  List accountablePeoplePartSeven = [];
  List urgenciesPartSeven = [];
  List imgUrlsProblemsPartSeven = [];
  List<Widget> problemCardsPartSeven = [];
  List problemsPartEight = [];
  List accountablePeoplePartEight = [];
  List urgenciesPartEight = [];
  List imgUrlsProblemsPartEight = [];
  List<Widget> problemCardsPartEight = [];
  List problemsPartNine = [];
  List accountablePeoplePartNine = [];
  List urgenciesPartNine = [];
  List imgUrlsProblemsPartNine = [];
  List<Widget> problemCardsPartNine = [];
  List problemsPartTen = [];
  List accountablePeoplePartTen = [];
  List urgenciesPartTen = [];
  List imgUrlsProblemsPartTen = [];
  List<Widget> problemCardsPartTen = [];
  List problemsPartEleven = [];
  List accountablePeoplePartEleven = [];
  List urgenciesPartEleven = [];
  List imgUrlsProblemsPartEleven = [];
  List<Widget> problemCardsPartEleven = [];
  List problemsPartTwelve = [];
  List accountablePeoplePartTwelve = [];
  List urgenciesPartTwelve = [];
  List imgUrlsProblemsPartTwelve = [];
  List<Widget> problemCardsPartTwelve = [];
  List problemsPartThirteen = [];
  List accountablePeoplePartThirteen = [];
  List urgenciesPartThirteen = [];
  List imgUrlsProblemsPartThirteen = [];
  List<Widget> problemCardsPartThirteen = [];
  List problemsPartFourteen = [];
  List accountablePeoplePartFourteen = [];
  List urgenciesPartFourteen = [];
  List imgUrlsProblemsPartFourteen = [];
  List<Widget> problemCardsPartFourteen = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aloitustiedot"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Havainnoitsijat:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            FutureBuilder<QuerySnapshot>(
                future: FirebaseFirestore.instance.collection("users").get(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final List<DocumentSnapshot> documents =
                        snapshot.data!.docs;
                    return ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: documents
                          .map((doc) => Card(
                                child: ListTile(
                                  title: Text(doc["name"]),
                                  subtitle: Text(doc["email"]),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.person_add),
                                    color: Colors.black,
                                    onPressed: () {
                                      if (!widget.accountablePeople
                                          .contains(doc["name"])) {
                                        widget.accountablePeople
                                            .add(doc["name"]);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("${doc["name"]} LISÄTTY"),
                                          duration: const Duration(
                                              milliseconds: 1500),
                                        ));
                                      } else {
                                        widget.accountablePeople
                                            .remove(doc["name"]);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("${doc["name"]} POISTETTU"),
                                          duration: const Duration(
                                              milliseconds: 1500),
                                        ));
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ))
                          .toList(),
                    );
                  } else if (snapshot.hasError) {
                    return const Text("ERROR");
                  } else if (!snapshot.hasData) {
                    return const Text("NO DATA.");
                  } else {
                    return const Text("Jotain meni pieleen...");
                  }
                }),
            const SizedBox(height: 15),
            const Text("Valittu:"),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: widget.accountablePeople.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (_) {
                    setState(() {
                      widget.accountablePeople.removeAt(index);
                    });
                  },
                  background: Container(
                    color: Colors.red,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerRight,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  child: Card(
                    elevation: 10,
                    child: ListTile(
                      title: Text(widget.accountablePeople[index]),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            const Text(
              "Päivämäärä:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: dateController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today),
                  labelText: "Päivämäärä",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            const Text(
              "Tila:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              child: DropdownButton(
                value: currentRoom,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: allRooms.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    currentRoom = newValue!;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: NextButton(
                onPressed: widget.accountablePeople.isNotEmpty
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormPartOnePage(
                                      accountablePeople:
                                          widget.accountablePeople,
                                      currentRoom: currentRoom,
                                      date: dateController.text,
                                      thingsOk1: thingsOk1,
                                      thingsNotOk1: thingsNotOk1,
                                      thingsOk2: thingsOk2,
                                      thingsNotOk2: thingsNotOk2,
                                      thingsOk3: thingsOk3,
                                      thingsNotOk3: thingsNotOk3,
                                      thingsOk4: thingsOk4,
                                      thingsNotOk4: thingsNotOk4,
                                      thingsOk5: thingsOk5,
                                      thingsNotOk5: thingsNotOk5,
                                      thingsOk6: thingsOk6,
                                      thingsNotOk6: thingsNotOk6,
                                      thingsOk7: thingsOk7,
                                      thingsNotOk7: thingsNotOk7,
                                      thingsOk8: thingsOk8,
                                      thingsNotOk8: thingsNotOk8,
                                      thingsOk9: thingsOk9,
                                      thingsNotOk9: thingsNotOk9,
                                      thingsOk10: thingsOk10,
                                      thingsNotOk10: thingsNotOk10,
                                      thingsOk11: thingsOk11,
                                      thingsNotOk11: thingsNotOk11,
                                      thingsOk12: thingsOk12,
                                      thingsNotOk12: thingsNotOk12,
                                      thingsOk13: thingsOk13,
                                      thingsNotOk13: thingsNotOk13,
                                      thingsOk14: thingsOk14,
                                      thingsNotOk14: thingsNotOk14,
                                      problemsPartOne: problemsPartOne,
                                      accountablePeoplePartOne:
                                          accountablePeoplePartOne,
                                      urgenciesPartOne: urgenciesPartOne,
                                      imgUrlsProblemsPartOne:
                                          imgUrlsProblemsPartOne,
                                      problemCardsPartOne: problemCardsPartOne,
                                      problemsPartTwo: problemsPartTwo,
                                      accountablePeoplePartTwo:
                                          accountablePeoplePartTwo,
                                      urgenciesPartTwo: urgenciesPartTwo,
                                      imgUrlsProblemsPartTwo:
                                          imgUrlsProblemsPartTwo,
                                      problemCardsPartTwo: problemCardsPartTwo,
                                      problemsPartThree: problemsPartThree,
                                      accountablePeoplePartThree:
                                          accountablePeoplePartThree,
                                      urgenciesPartThree: urgenciesPartThree,
                                      imgUrlsProblemsPartThree:
                                          imgUrlsProblemsPartThree,
                                      problemCardsPartThree:
                                          problemCardsPartThree,
                                      problemsPartFour: problemsPartFour,
                                      accountablePeoplePartFour:
                                          accountablePeoplePartFour,
                                      urgenciesPartFour: urgenciesPartFour,
                                      imgUrlsProblemsPartFour:
                                          imgUrlsProblemsPartFour,
                                      problemCardsPartFour:
                                          problemCardsPartFour,
                                      problemsPartFive: problemsPartFive,
                                      accountablePeoplePartFive:
                                          accountablePeoplePartFive,
                                      urgenciesPartFive: urgenciesPartFive,
                                      imgUrlsProblemsPartFive:
                                          imgUrlsProblemsPartFive,
                                      problemCardsPartFive:
                                          problemCardsPartFive,
                                      problemsPartSix: problemsPartSix,
                                      accountablePeoplePartSix:
                                          accountablePeoplePartSix,
                                      urgenciesPartSix: urgenciesPartSix,
                                      imgUrlsProblemsPartSix:
                                          imgUrlsProblemsPartSix,
                                      problemCardsPartSix: problemCardsPartSix,
                                      problemsPartSeven: problemsPartSeven,
                                      accountablePeoplePartSeven:
                                          accountablePeoplePartSeven,
                                      urgenciesPartSeven: urgenciesPartSeven,
                                      imgUrlsProblemsPartSeven:
                                          imgUrlsProblemsPartSeven,
                                      problemCardsPartSeven:
                                          problemCardsPartSeven,
                                      problemsPartEight: problemsPartEight,
                                      accountablePeoplePartEight:
                                          accountablePeoplePartEight,
                                      urgenciesPartEight: urgenciesPartEight,
                                      imgUrlsProblemsPartEight:
                                          imgUrlsProblemsPartEight,
                                      problemCardsPartEight:
                                          problemCardsPartEight,
                                      problemsPartNine: problemsPartNine,
                                      accountablePeoplePartNine:
                                          accountablePeoplePartNine,
                                      urgenciesPartNine: urgenciesPartNine,
                                      imgUrlsProblemsPartNine:
                                          imgUrlsProblemsPartNine,
                                      problemCardsPartNine:
                                          problemCardsPartNine,
                                      problemsPartTen: problemsPartTen,
                                      accountablePeoplePartTen:
                                          accountablePeoplePartTen,
                                      urgenciesPartTen: urgenciesPartTen,
                                      imgUrlsProblemsPartTen:
                                          imgUrlsProblemsPartTen,
                                      problemCardsPartTen: problemCardsPartTen,
                                      problemsPartEleven: problemsPartEleven,
                                      accountablePeoplePartEleven:
                                          accountablePeoplePartEleven,
                                      urgenciesPartEleven: urgenciesPartEleven,
                                      imgUrlsProblemsPartEleven:
                                          imgUrlsProblemsPartEleven,
                                      problemCardsPartEleven:
                                          problemCardsPartEleven,
                                      problemsPartTwelve: problemsPartTwelve,
                                      accountablePeoplePartTwelve:
                                          accountablePeoplePartTwelve,
                                      urgenciesPartTwelve: urgenciesPartTwelve,
                                      imgUrlsProblemsPartTwelve:
                                          imgUrlsProblemsPartTwelve,
                                      problemCardsPartTwelve:
                                          problemCardsPartTwelve,
                                      problemsPartThirteen:
                                          problemsPartThirteen,
                                      accountablePeoplePartThirteen:
                                          accountablePeoplePartThirteen,
                                      urgenciesPartThirteen:
                                          urgenciesPartThirteen,
                                      imgUrlsProblemsPartThirteen:
                                          imgUrlsProblemsPartThirteen,
                                      problemCardsPartThirteen:
                                          problemCardsPartThirteen,
                                      problemsPartFourteen:
                                          problemsPartFourteen,
                                      accountablePeoplePartFourteen:
                                          accountablePeoplePartFourteen,
                                      urgenciesPartFourteen:
                                          urgenciesPartFourteen,
                                      imgUrlsProblemsPartFourteen:
                                          imgUrlsProblemsPartFourteen,
                                      problemCardsPartFourteen:
                                          problemCardsPartFourteen,
                                    )));
                      }
                    : () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content:
                              Text("Valitse vähintään yksi havainnoitsija!"),
                          duration: Duration(milliseconds: 1500),
                        ));
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
