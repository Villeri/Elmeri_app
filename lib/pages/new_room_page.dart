import 'package:flutter/material.dart';

import '../widgets/next_button.dart';
import 'form_parts/form_part1_page.dart';

class NewRoom extends StatefulWidget {
  List accountablePeople;
  String date;
  int thingsOk1;
  int thingsNotOk1;
  int thingsOk2;
  int thingsNotOk2;
  int thingsOk3;
  int thingsNotOk3;
  int thingsOk4;
  int thingsNotOk4;
  int thingsOk5;
  int thingsNotOk5;
  int thingsOk6;
  int thingsNotOk6;
  int thingsOk7;
  int thingsNotOk7;
  int thingsOk8;
  int thingsNotOk8;
  int thingsOk9;
  int thingsNotOk9;
  int thingsOk10;
  int thingsNotOk10;
  int thingsOk11;
  int thingsNotOk11;
  int thingsOk12;
  int thingsNotOk12;
  int thingsOk13;
  int thingsNotOk13;
  int thingsOk14;
  int thingsNotOk14;
  List problemsPartOne;
  List accountablePeoplePartOne;
  List urgenciesPartOne;
  List imgUrlsProblemsPartOne;
  List<Widget> problemCardsPartOne;
  List problemsPartTwo;
  List accountablePeoplePartTwo;
  List urgenciesPartTwo;
  List imgUrlsProblemsPartTwo;
  List<Widget> problemCardsPartTwo;
  List problemsPartThree;
  List accountablePeoplePartThree;
  List urgenciesPartThree;
  List imgUrlsProblemsPartThree;
  List<Widget> problemCardsPartThree;
  List problemsPartFour;
  List accountablePeoplePartFour;
  List urgenciesPartFour;
  List imgUrlsProblemsPartFour;
  List<Widget> problemCardsPartFour;
  List problemsPartFive;
  List accountablePeoplePartFive;
  List urgenciesPartFive;
  List imgUrlsProblemsPartFive;
  List<Widget> problemCardsPartFive;
  List problemsPartSix;
  List accountablePeoplePartSix;
  List urgenciesPartSix;
  List imgUrlsProblemsPartSix;
  List<Widget> problemCardsPartSix;
  List problemsPartSeven;
  List accountablePeoplePartSeven;
  List urgenciesPartSeven;
  List imgUrlsProblemsPartSeven;
  List<Widget> problemCardsPartSeven;
  List problemsPartEight;
  List accountablePeoplePartEight;
  List urgenciesPartEight;
  List imgUrlsProblemsPartEight;
  List<Widget> problemCardsPartEight;
  List problemsPartNine;
  List accountablePeoplePartNine;
  List urgenciesPartNine;
  List imgUrlsProblemsPartNine;
  List<Widget> problemCardsPartNine;
  List problemsPartTen;
  List accountablePeoplePartTen;
  List urgenciesPartTen;
  List imgUrlsProblemsPartTen;
  List<Widget> problemCardsPartTen;
  List problemsPartEleven;
  List accountablePeoplePartEleven;
  List urgenciesPartEleven;
  List imgUrlsProblemsPartEleven;
  List<Widget> problemCardsPartEleven;
  List problemsPartTwelve;
  List accountablePeoplePartTwelve;
  List urgenciesPartTwelve;
  List imgUrlsProblemsPartTwelve;
  List<Widget> problemCardsPartTwelve;
  List problemsPartThirteen;
  List accountablePeoplePartThirteen;
  List urgenciesPartThirteen;
  List imgUrlsProblemsPartThirteen;
  List<Widget> problemCardsPartThirteen;
  List problemsPartFourteen;
  List accountablePeoplePartFourteen;
  List urgenciesPartFourteen;
  List imgUrlsProblemsPartFourteen;
  List<Widget> problemCardsPartFourteen;

  NewRoom({
    Key? key,
    required this.accountablePeople,
    required this.date,
    required this.thingsOk1,
    required this.thingsNotOk1,
    required this.thingsOk2,
    required this.thingsNotOk2,
    required this.thingsOk3,
    required this.thingsNotOk3,
    required this.thingsOk4,
    required this.thingsNotOk4,
    required this.thingsOk5,
    required this.thingsNotOk5,
    required this.thingsOk6,
    required this.thingsNotOk6,
    required this.thingsOk7,
    required this.thingsNotOk7,
    required this.thingsOk8,
    required this.thingsNotOk8,
    required this.thingsOk9,
    required this.thingsNotOk9,
    required this.thingsOk10,
    required this.thingsNotOk10,
    required this.thingsOk11,
    required this.thingsNotOk11,
    required this.thingsOk12,
    required this.thingsNotOk12,
    required this.thingsOk13,
    required this.thingsNotOk13,
    required this.thingsOk14,
    required this.thingsNotOk14,
    required this.problemsPartOne,
    required this.accountablePeoplePartOne,
    required this.urgenciesPartOne,
    required this.imgUrlsProblemsPartOne,
    required this.problemCardsPartOne,
    required this.problemsPartTwo,
    required this.accountablePeoplePartTwo,
    required this.urgenciesPartTwo,
    required this.imgUrlsProblemsPartTwo,
    required this.problemCardsPartTwo,
    required this.problemsPartThree,
    required this.accountablePeoplePartThree,
    required this.urgenciesPartThree,
    required this.imgUrlsProblemsPartThree,
    required this.problemCardsPartThree,
    required this.problemsPartFour,
    required this.accountablePeoplePartFour,
    required this.urgenciesPartFour,
    required this.imgUrlsProblemsPartFour,
    required this.problemCardsPartFour,
    required this.problemsPartFive,
    required this.accountablePeoplePartFive,
    required this.urgenciesPartFive,
    required this.imgUrlsProblemsPartFive,
    required this.problemCardsPartFive,
    required this.problemsPartSix,
    required this.accountablePeoplePartSix,
    required this.urgenciesPartSix,
    required this.imgUrlsProblemsPartSix,
    required this.problemCardsPartSix,
    required this.problemsPartSeven,
    required this.accountablePeoplePartSeven,
    required this.urgenciesPartSeven,
    required this.imgUrlsProblemsPartSeven,
    required this.problemCardsPartSeven,
    required this.problemsPartEight,
    required this.accountablePeoplePartEight,
    required this.urgenciesPartEight,
    required this.imgUrlsProblemsPartEight,
    required this.problemCardsPartEight,
    required this.problemsPartNine,
    required this.accountablePeoplePartNine,
    required this.urgenciesPartNine,
    required this.imgUrlsProblemsPartNine,
    required this.problemCardsPartNine,
    required this.problemsPartTen,
    required this.accountablePeoplePartTen,
    required this.urgenciesPartTen,
    required this.imgUrlsProblemsPartTen,
    required this.problemCardsPartTen,
    required this.problemsPartEleven,
    required this.accountablePeoplePartEleven,
    required this.urgenciesPartEleven,
    required this.imgUrlsProblemsPartEleven,
    required this.problemCardsPartEleven,
    required this.problemsPartTwelve,
    required this.accountablePeoplePartTwelve,
    required this.urgenciesPartTwelve,
    required this.imgUrlsProblemsPartTwelve,
    required this.problemCardsPartTwelve,
    required this.problemsPartThirteen,
    required this.accountablePeoplePartThirteen,
    required this.urgenciesPartThirteen,
    required this.imgUrlsProblemsPartThirteen,
    required this.problemCardsPartThirteen,
    required this.problemsPartFourteen,
    required this.accountablePeoplePartFourteen,
    required this.urgenciesPartFourteen,
    required this.imgUrlsProblemsPartFourteen,
    required this.problemCardsPartFourteen,
  }) : super(key: key);

  @override
  State<NewRoom> createState() => _NewRoomState();
}

class _NewRoomState extends State<NewRoom> {
  String _currentRoom = "5A102";
  final List<String> _allRooms = [
    "5A102",
    "5A101",
    "5A103",
    "5B103",
    "5A105",
    "5B120 & 5B122",
    "5B101 & 5B101a"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valitse tila"),
      ),
      body: Center(
        child: Column(
          children: [
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
                value: _currentRoom,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: _allRooms.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _currentRoom = newValue!;
                  });
                },
              ),
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.bottomRight,
              child: NextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FormPartOnePage(
                                accountablePeople: widget.accountablePeople,
                                currentRoom: _currentRoom,
                                date: widget.date,
                                thingsOk1: widget.thingsOk1,
                                thingsNotOk1: widget.thingsNotOk1,
                                thingsOk2: widget.thingsOk2,
                                thingsNotOk2: widget.thingsNotOk2,
                                thingsOk3: widget.thingsOk3,
                                thingsNotOk3: widget.thingsNotOk3,
                                thingsOk4: widget.thingsOk4,
                                thingsNotOk4: widget.thingsNotOk4,
                                thingsOk5: widget.thingsOk5,
                                thingsNotOk5: widget.thingsNotOk5,
                                thingsOk6: widget.thingsOk6,
                                thingsNotOk6: widget.thingsNotOk6,
                                thingsOk7: widget.thingsOk7,
                                thingsNotOk7: widget.thingsNotOk7,
                                thingsOk8: widget.thingsOk8,
                                thingsNotOk8: widget.thingsNotOk8,
                                thingsOk9: widget.thingsOk9,
                                thingsNotOk9: widget.thingsNotOk9,
                                thingsOk10: widget.thingsOk10,
                                thingsNotOk10: widget.thingsNotOk10,
                                thingsOk11: widget.thingsOk11,
                                thingsNotOk11: widget.thingsNotOk11,
                                thingsOk12: widget.thingsOk12,
                                thingsNotOk12: widget.thingsNotOk12,
                                thingsOk13: widget.thingsOk13,
                                thingsNotOk13: widget.thingsNotOk13,
                                thingsOk14: widget.thingsOk14,
                                thingsNotOk14: widget.thingsNotOk14,
                                problemCardsPartOne: widget.problemCardsPartOne,
                                problemsPartOne: widget.problemsPartOne,
                                urgenciesPartOne: widget.urgenciesPartOne,
                                accountablePeoplePartOne:
                                    widget.accountablePeoplePartOne,
                                imgUrlsProblemsPartOne:
                                    widget.imgUrlsProblemsPartOne,
                                problemsPartTwo: widget.problemsPartTwo,
                                accountablePeoplePartTwo:
                                    widget.accountablePeoplePartTwo,
                                urgenciesPartTwo: widget.urgenciesPartTwo,
                                imgUrlsProblemsPartTwo:
                                    widget.imgUrlsProblemsPartTwo,
                                problemCardsPartTwo: widget.problemCardsPartTwo,
                                problemsPartThree: widget.problemsPartThree,
                                accountablePeoplePartThree:
                                    widget.accountablePeoplePartThree,
                                urgenciesPartThree: widget.urgenciesPartThree,
                                imgUrlsProblemsPartThree:
                                    widget.imgUrlsProblemsPartThree,
                                problemCardsPartThree:
                                    widget.problemCardsPartThree,
                                problemsPartFour: widget.problemsPartFour,
                                accountablePeoplePartFour:
                                    widget.accountablePeoplePartFour,
                                urgenciesPartFour: widget.urgenciesPartFour,
                                imgUrlsProblemsPartFour:
                                    widget.imgUrlsProblemsPartFour,
                                problemCardsPartFour:
                                    widget.problemCardsPartFour,
                                problemsPartFive: widget.problemsPartFive,
                                accountablePeoplePartFive:
                                    widget.accountablePeoplePartFive,
                                urgenciesPartFive: widget.urgenciesPartFive,
                                imgUrlsProblemsPartFive:
                                    widget.imgUrlsProblemsPartFive,
                                problemCardsPartFive:
                                    widget.problemCardsPartFive,
                                problemsPartSix: widget.problemsPartSix,
                                accountablePeoplePartSix:
                                    widget.accountablePeoplePartSix,
                                urgenciesPartSix: widget.urgenciesPartSix,
                                imgUrlsProblemsPartSix:
                                    widget.imgUrlsProblemsPartSix,
                                problemCardsPartSix: widget.problemCardsPartSix,
                                problemsPartSeven: widget.problemsPartSeven,
                                accountablePeoplePartSeven:
                                    widget.accountablePeoplePartSeven,
                                urgenciesPartSeven: widget.urgenciesPartSeven,
                                imgUrlsProblemsPartSeven:
                                    widget.imgUrlsProblemsPartSeven,
                                problemCardsPartSeven:
                                    widget.problemCardsPartSeven,
                                problemsPartEight: widget.problemsPartEight,
                                accountablePeoplePartEight:
                                    widget.accountablePeoplePartEight,
                                urgenciesPartEight: widget.urgenciesPartEight,
                                imgUrlsProblemsPartEight:
                                    widget.imgUrlsProblemsPartEight,
                                problemCardsPartEight:
                                    widget.problemCardsPartEight,
                                problemsPartNine: widget.problemsPartNine,
                                accountablePeoplePartNine:
                                    widget.accountablePeoplePartNine,
                                urgenciesPartNine: widget.urgenciesPartNine,
                                imgUrlsProblemsPartNine:
                                    widget.imgUrlsProblemsPartNine,
                                problemCardsPartNine:
                                    widget.problemCardsPartNine,
                                problemsPartTen: widget.problemsPartTen,
                                accountablePeoplePartTen:
                                    widget.accountablePeoplePartTen,
                                urgenciesPartTen: widget.urgenciesPartTen,
                                imgUrlsProblemsPartTen:
                                    widget.imgUrlsProblemsPartTen,
                                problemCardsPartTen: widget.problemCardsPartTen,
                                problemsPartEleven: widget.problemsPartEleven,
                                accountablePeoplePartEleven:
                                    widget.accountablePeoplePartEleven,
                                urgenciesPartEleven: widget.urgenciesPartEleven,
                                imgUrlsProblemsPartEleven:
                                    widget.imgUrlsProblemsPartEleven,
                                problemCardsPartEleven:
                                    widget.problemCardsPartEleven,
                                problemsPartTwelve: widget.problemsPartTwelve,
                                accountablePeoplePartTwelve:
                                    widget.accountablePeoplePartTwelve,
                                urgenciesPartTwelve: widget.urgenciesPartTwelve,
                                imgUrlsProblemsPartTwelve:
                                    widget.imgUrlsProblemsPartTwelve,
                                problemCardsPartTwelve:
                                    widget.problemCardsPartTwelve,
                                problemsPartThirteen:
                                    widget.problemsPartThirteen,
                                accountablePeoplePartThirteen:
                                    widget.accountablePeoplePartThirteen,
                                urgenciesPartThirteen:
                                    widget.urgenciesPartThirteen,
                                imgUrlsProblemsPartThirteen:
                                    widget.imgUrlsProblemsPartThirteen,
                                problemCardsPartThirteen:
                                    widget.problemCardsPartThirteen,
                                problemsPartFourteen:
                                    widget.problemsPartFourteen,
                                accountablePeoplePartFourteen:
                                    widget.accountablePeoplePartFourteen,
                                urgenciesPartFourteen:
                                    widget.urgenciesPartFourteen,
                                imgUrlsProblemsPartFourteen:
                                    widget.imgUrlsProblemsPartFourteen,
                                problemCardsPartFourteen:
                                    widget.problemCardsPartFourteen,
                              )));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
