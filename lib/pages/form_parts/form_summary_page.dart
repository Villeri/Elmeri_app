import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmeri_sovellus/main.dart';
import 'package:elmeri_sovellus/widgets/summary_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:http/http.dart' show get;

import '../../models/form_data.model.dart';
import '../new_room_page.dart';

class FormSummaryPage extends StatefulWidget {
  String currentRoom;
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
  num allThingsOk;
  num allThingsNotOk;
  double index;

  FormSummaryPage({
    Key? key,
    required this.currentRoom,
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
    required this.allThingsOk,
    required this.allThingsNotOk,
    required this.index,
  }) : super(key: key);

  @override
  State<FormSummaryPage> createState() => _FormSummaryPageState();
}

class _FormSummaryPageState extends State<FormSummaryPage> {
  Data _data = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yhteenveto")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text("Tila: ${widget.currentRoom}"),
              Text("Päivämäärä: ${widget.date}"),
              const Text("Havainnoitsijat:"),
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
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    child: Card(
                      child: ListTile(
                        title: Text(widget.accountablePeople[index]),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
              const Text("Työskentely",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SummaryCardWidget(
                formPart: "1",
                thingsOk: widget.thingsOk1.toString(),
                thingsNotOk: widget.thingsNotOk1.toString(),
              ),
              const SizedBox(height: 15),
              const Text("Ergonomia",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SummaryCardWidget(
                formPart: "2",
                thingsOk: widget.thingsOk2.toString(),
                thingsNotOk: widget.thingsNotOk2.toString(),
              ),
              const SizedBox(height: 15),
              SummaryCardWidget(
                formPart: "3",
                thingsOk: widget.thingsOk3.toString(),
                thingsNotOk: widget.thingsNotOk3.toString(),
              ),
              const SizedBox(height: 15),
              const Text("Kone- ja laiteturvallisuus",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SummaryCardWidget(
                formPart: "4",
                thingsOk: widget.thingsOk4.toString(),
                thingsNotOk: widget.thingsNotOk4.toString(),
              ),
              const SizedBox(height: 15),
              SummaryCardWidget(
                formPart: "5",
                thingsOk: widget.thingsOk5.toString(),
                thingsNotOk: widget.thingsNotOk5.toString(),
              ),
              const SizedBox(height: 15),
              const Text("Liikkumisturvallisuus",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SummaryCardWidget(
                formPart: "6",
                thingsOk: widget.thingsOk6.toString(),
                thingsNotOk: widget.thingsNotOk6.toString(),
              ),
              const SizedBox(height: 15),
              SummaryCardWidget(
                formPart: "7",
                thingsOk: widget.thingsOk7.toString(),
                thingsNotOk: widget.thingsNotOk7.toString(),
              ),
              const SizedBox(height: 15),
              const Text("Järjestys",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SummaryCardWidget(
                formPart: "8",
                thingsOk: widget.thingsOk8.toString(),
                thingsNotOk: widget.thingsNotOk8.toString(),
              ),
              const SizedBox(height: 15),
              SummaryCardWidget(
                formPart: "9",
                thingsOk: widget.thingsOk9.toString(),
                thingsNotOk: widget.thingsNotOk9.toString(),
              ),
              const SizedBox(height: 15),
              SummaryCardWidget(
                formPart: "10",
                thingsOk: widget.thingsOk10.toString(),
                thingsNotOk: widget.thingsNotOk10.toString(),
              ),
              const SizedBox(height: 15),
              const Text("Työympäristötekijät",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SummaryCardWidget(
                formPart: "11",
                thingsOk: widget.thingsOk11.toString(),
                thingsNotOk: widget.thingsNotOk11.toString(),
              ),
              const SizedBox(height: 15),
              SummaryCardWidget(
                formPart: "12",
                thingsOk: widget.thingsOk12.toString(),
                thingsNotOk: widget.thingsNotOk12.toString(),
              ),
              const SizedBox(height: 15),
              SummaryCardWidget(
                formPart: "13",
                thingsOk: widget.thingsOk13.toString(),
                thingsNotOk: widget.thingsNotOk13.toString(),
              ),
              const SizedBox(height: 15),
              SummaryCardWidget(
                formPart: "14",
                thingsOk: widget.thingsOk14.toString(),
                thingsNotOk: widget.thingsNotOk14.toString(),
              ),
              const SizedBox(height: 15),
              const Text("Yhteensä",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(
                "Kunnossa: ${widget.allThingsOk}",
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                "Ei kunnossa: ${widget.allThingsNotOk}",
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                "Indeksi: ${widget.index.toStringAsFixed(2)} %",
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 30),
              const Text("Poikkeamat",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              checkProblems1(),
              const SizedBox(height: 15),
              checkProblems2(),
              const SizedBox(height: 15),
              checkProblems3(),
              const SizedBox(height: 15),
              checkProblems4(),
              const SizedBox(height: 15),
              checkProblems5(),
              const SizedBox(height: 15),
              checkProblems6(),
              const SizedBox(height: 15),
              checkProblems7(),
              const SizedBox(height: 15),
              checkProblems8(),
              const SizedBox(height: 15),
              checkProblems9(),
              const SizedBox(height: 15),
              checkProblems10(),
              const SizedBox(height: 15),
              checkProblems11(),
              const SizedBox(height: 15),
              checkProblems12(),
              const SizedBox(height: 15),
              checkProblems13(),
              const SizedBox(height: 15),
              checkProblems14(),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                icon: const Icon(Icons.arrow_forward),
                label: const Text(
                  "Seuraava tila",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewRoom(
                                accountablePeople: widget.accountablePeople,
                                date: widget.date,
                                problemCardsPartOne: widget.problemCardsPartOne,
                                problemsPartOne: widget.problemsPartOne,
                                accountablePeoplePartOne:
                                    widget.accountablePeoplePartOne,
                                urgenciesPartOne: widget.urgenciesPartOne,
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
                                allThingsOk: widget.allThingsOk,
                                allThingsNotOk: widget.allThingsNotOk,
                              )));
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Huomio"),
                            content: const Text(
                                "Tiedot nollaantuvat jos menet päävalikkoon"),
                            actions: <Widget>[
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("Takaisin"),
                                  ),
                                  const Spacer(),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MainMenu(
                                              userType: "user",
                                            ),
                                          ),
                                        );
                                      },
                                      child: const Text("OK"))
                                ],
                              ),
                            ],
                          ),
                        );
                        /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainMenu(
                                      userType: "user",
                                    )));*/
                      },
                      child: const Text("Päävalikkoon")),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: createPdf, child: const Text("Avaa PDF")),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        saveDataToDatabase();
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Tiedot tallennettu"),
                          duration: Duration(milliseconds: 1500),
                        ));
                      },
                      child: const Text("Tallenna tiedot")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  checkProblems1() {
    if (widget.problemCardsPartOne.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartOne.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartOne.removeAt(index);
              });
            },
            child: widget.problemCardsPartOne[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems2() {
    if (widget.problemCardsPartTwo.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartTwo.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartTwo.removeAt(index);
              });
            },
            child: widget.problemCardsPartTwo[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems3() {
    if (widget.problemCardsPartThree.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartThree.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartThree.removeAt(index);
              });
            },
            child: widget.problemCardsPartThree[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems4() {
    if (widget.problemCardsPartFour.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartFour.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartFour.removeAt(index);
              });
            },
            child: widget.problemCardsPartFour[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems5() {
    if (widget.problemCardsPartFive.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartFive.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartFive.removeAt(index);
              });
            },
            child: widget.problemCardsPartFive[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems6() {
    if (widget.problemCardsPartSix.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartSix.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartSix.removeAt(index);
              });
            },
            child: widget.problemCardsPartSix[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems7() {
    if (widget.problemCardsPartSeven.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartSeven.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartSeven.removeAt(index);
              });
            },
            child: widget.problemCardsPartSeven[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems8() {
    if (widget.problemCardsPartEight.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartEight.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartEight.removeAt(index);
              });
            },
            child: widget.problemCardsPartEight[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems9() {
    if (widget.problemCardsPartNine.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartNine.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartNine.removeAt(index);
              });
            },
            child: widget.problemCardsPartNine[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems10() {
    if (widget.problemCardsPartTen.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartTen.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartTen.removeAt(index);
              });
            },
            child: widget.problemCardsPartTen[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems11() {
    if (widget.problemCardsPartEleven.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartEleven.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartEleven.removeAt(index);
              });
            },
            child: widget.problemCardsPartEleven[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems12() {
    if (widget.problemCardsPartTwelve.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartTwelve.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartTwelve.removeAt(index);
              });
            },
            child: widget.problemCardsPartTwelve[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems13() {
    if (widget.problemCardsPartThirteen.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartThirteen.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartThirteen.removeAt(index);
              });
            },
            child: widget.problemCardsPartThirteen[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  checkProblems14() {
    if (widget.problemCardsPartFourteen.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.problemCardsPartFourteen.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              setState(() {
                widget.problemCardsPartFourteen.removeAt(index);
              });
            },
            child: widget.problemCardsPartFourteen[index],
            background: Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }

  void saveDataToDatabase() async {
    String accountablePpl = "";
    for (var i = 0; i < widget.accountablePeople.length; i++) {
      accountablePpl += "${widget.accountablePeople[i]}, ";
    }
    accountablePpl = accountablePpl.substring(0, accountablePpl.length - 2);

    _data.names = accountablePpl;
    _data.room = widget.currentRoom;
    _data.allOk = widget.allThingsOk.toString();
    _data.allNotOk = widget.allThingsNotOk.toString();
    _data.index = widget.index.toStringAsFixed(2);
    _data.created = DateTime.now();

    await FirebaseFirestore.instance.collection("forms").add(_data.toJson());
  }

  Future<void> createPdf() async {
    String accountablePpl = "";
    for (var i = 0; i < widget.accountablePeople.length; i++) {
      accountablePpl += "${widget.accountablePeople[i]}, ";
    }
    accountablePpl = accountablePpl.substring(0, accountablePpl.length - 2);

    PdfDocument document = PdfDocument();
    final page = document.pages.add();
    double marginTop = 0;

    page.graphics.drawString(
      "Elmeri  ${widget.date} ${widget.currentRoom}",
      PdfStandardFont(PdfFontFamily.helvetica, 25),
    );

    marginTop += 30;
    page.graphics.drawString(
      "Havainnoitsijat: $accountablePpl",
      PdfStandardFont(PdfFontFamily.helvetica, 25),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 50;
    page.graphics.drawString(
      "1. Suojaimet, vaatetus, riskinotto",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page.graphics.drawString(
      "Kunnossa: ${widget.thingsOk1}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk1}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page.graphics.drawString(
      "2. Fyysinen kuormitus",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page.graphics.drawString(
      "Kunnossa: ${widget.thingsOk2}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk2}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page.graphics.drawString(
      "3. Työpisteiden ja -välinen ergonomia",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page.graphics.drawString(
      "Kunnossa: ${widget.thingsOk3}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk3}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page.graphics.drawString(
      "4. Koneiden kunto ja suojalaitteet",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page.graphics.drawString(
      "Kunnossa: ${widget.thingsOk4}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk4}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page.graphics.drawString(
      "5. Koneiden hallintalaitteet ja merkinnät",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page.graphics.drawString(
      "Kunnossa: ${widget.thingsOk5}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk5}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page.graphics.drawString(
      "6. Kulkuteiden ja lattioiden rakenne, puotamissuojaus",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page.graphics.drawString(
      "Kunnossa: ${widget.thingsOk6}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk6}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page.graphics.drawString(
      "7. Poistumistiet",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page.graphics.drawString(
      "Kunnossa: ${widget.thingsOk7}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk7}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    final page2 = document.pages.add();
    marginTop = 0;

    page2.graphics.drawString(
      "Elmeri  ${widget.date} ${widget.currentRoom}",
      PdfStandardFont(PdfFontFamily.helvetica, 25),
    );

    marginTop += 30;
    page2.graphics.drawString(
      "Havainnoitsijat: $accountablePpl",
      PdfStandardFont(PdfFontFamily.helvetica, 25),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 50;
    page2.graphics.drawString(
      "8. Kulkuteiden ja lattioiden järjestys",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page2.graphics.drawString(
      "Kunnossa: ${widget.thingsOk8}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page2.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk8}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page2.graphics.drawString(
      "9. Pöydät, päälliset ja hyllyt",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page2.graphics.drawString(
      "Kunnossa: ${widget.thingsOk9}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page2.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk9}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page2.graphics.drawString(
      "10. Jäteastiat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page2.graphics.drawString(
      "Kunnossa: ${widget.thingsOk10}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page2.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk10}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page2.graphics.drawString(
      "11. Melu",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page2.graphics.drawString(
      "Kunnossa: ${widget.thingsOk11}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page2.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk11}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page2.graphics.drawString(
      "12. Valaistus",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page2.graphics.drawString(
      "Kunnossa: ${widget.thingsOk12}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page2.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk12}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page2.graphics.drawString(
      "13. Lämpöolosuhteet",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page2.graphics.drawString(
      "Kunnossa: ${widget.thingsOk13}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page2.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk13}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 35;
    page2.graphics.drawString(
      "14. Ilman puhtaus ja käsiteltävät aineet",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 30;
    page2.graphics.drawString(
      "Kunnossa: ${widget.thingsOk14}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );
    marginTop += 20;
    page2.graphics.drawString(
      "Ei kunnossa: ${widget.thingsNotOk14}",
      PdfStandardFont(PdfFontFamily.helvetica, 15),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    //Poikkeamat kohta 1
    final page3 = document.pages.add();
    marginTop = 15;

    page3.graphics.drawString(
      "1. Riskinotto, suojaus ja vaatetus poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartOne.isEmpty) {
      page3.graphics.drawString(
        "Ei poikkeamia kohdassa 1.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartOne.length; i++) {
        page3.graphics.drawString(
          "Poikkeama: ${widget.problemsPartOne[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page3.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartOne[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page3.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartOne[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartOne[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page3.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 2
    final page4 = document.pages.add();
    marginTop = 15;

    page4.graphics.drawString(
      "2. Fyysinen kuormitus poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartTwo.isEmpty) {
      page4.graphics.drawString(
        "Ei poikkeamia kohdassa 2.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartTwo.length; i++) {
        page4.graphics.drawString(
          "Poikkeama: ${widget.problemsPartTwo[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page4.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartTwo[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page4.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartTwo[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartTwo[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page4.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 3
    final page5 = document.pages.add();
    marginTop = 15;

    page5.graphics.drawString(
      "3. Työpisteiden ja -välinen ergonomia poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartThree.isEmpty) {
      page5.graphics.drawString(
        "Ei poikkeamia kohdassa 3.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartThree.length; i++) {
        page5.graphics.drawString(
          "Poikkeama: ${widget.problemsPartThree[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page5.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartThree[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page5.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartThree[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartThree[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page5.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 4
    final page6 = document.pages.add();
    marginTop = 15;

    page6.graphics.drawString(
      "4. Koneiden kunto ja suojalaitteet poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartFour.isEmpty) {
      page6.graphics.drawString(
        "Ei poikkeamia kohdassa 4.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartFour.length; i++) {
        page6.graphics.drawString(
          "Poikkeama: ${widget.problemsPartFour[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page6.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartFour[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page6.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartFour[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartFour[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page6.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 5
    final page7 = document.pages.add();
    marginTop = 15;

    page7.graphics.drawString(
      "5. Koneiden hallintalaitteet ja merkinnät poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartFive.isEmpty) {
      page7.graphics.drawString(
        "Ei poikkeamia kohdassa 5.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartFive.length; i++) {
        page7.graphics.drawString(
          "Poikkeama: ${widget.problemsPartFive[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page7.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartFive[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page7.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartFive[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartFive[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page7.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 6
    final page8 = document.pages.add();
    marginTop = 15;

    page8.graphics.drawString(
      "6. Kulkuteiden ja lattioiden rakenne, putoamissuojaus poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartSix.isEmpty) {
      page8.graphics.drawString(
        "Ei poikkeamia kohdassa 6.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartSix.length; i++) {
        page8.graphics.drawString(
          "Poikkeama: ${widget.problemsPartSix[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page8.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartSix[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page8.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartSix[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartSix[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page8.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 7
    final page9 = document.pages.add();
    marginTop = 15;

    page9.graphics.drawString(
      "7. Poistumistiet poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartSeven.isEmpty) {
      page9.graphics.drawString(
        "Ei poikkeamia kohdassa 7.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartSeven.length; i++) {
        page9.graphics.drawString(
          "Poikkeama: ${widget.problemsPartSeven[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page9.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartSeven[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page9.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartSeven[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartSeven[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page9.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 8
    final page10 = document.pages.add();
    marginTop = 15;

    page10.graphics.drawString(
      "8. Kulkuteiden ja lattioiden järjestys poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartEight.isEmpty) {
      page10.graphics.drawString(
        "Ei poikkeamia kohdassa 8.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartEight.length; i++) {
        page10.graphics.drawString(
          "Poikkeama: ${widget.problemsPartEight[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page10.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartEight[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page10.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartEight[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartEight[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page10.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 9
    final page11 = document.pages.add();
    marginTop = 15;

    page11.graphics.drawString(
      "9. Pöydät, päälliset ja hyllyt poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartNine.isEmpty) {
      page11.graphics.drawString(
        "Ei poikkeamia kohdassa 9.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartNine.length; i++) {
        page11.graphics.drawString(
          "Poikkeama: ${widget.problemsPartNine[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page11.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartNine[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page11.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartNine[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartNine[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page11.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 10
    final page12 = document.pages.add();
    marginTop = 15;

    page12.graphics.drawString(
      "10. Jäteastiat poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartTen.isEmpty) {
      page12.graphics.drawString(
        "Ei poikkeamia kohdassa 10.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartTen.length; i++) {
        page12.graphics.drawString(
          "Poikkeama: ${widget.problemsPartTen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page12.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartTen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page12.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartTen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartTen[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page12.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 11
    final page13 = document.pages.add();
    marginTop = 15;

    page13.graphics.drawString(
      "11. Melu poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartEleven.isEmpty) {
      page13.graphics.drawString(
        "Ei poikkeamia kohdassa 11.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartEleven.length; i++) {
        page13.graphics.drawString(
          "Poikkeama: ${widget.problemsPartEleven[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page13.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartEleven[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page13.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartEleven[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartEleven[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page13.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 12
    final page14 = document.pages.add();
    marginTop = 15;

    page14.graphics.drawString(
      "12. Valaistus poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartTwelve.isEmpty) {
      page14.graphics.drawString(
        "Ei poikkeamia kohdassa 12.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartTwelve.length; i++) {
        page14.graphics.drawString(
          "Poikkeama: ${widget.problemsPartTwelve[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page14.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartTwelve[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page14.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartTwelve[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartTwelve[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page14.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 13
    final page15 = document.pages.add();
    marginTop = 15;

    page15.graphics.drawString(
      "13. Lämpöolosuhteet poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartThirteen.isEmpty) {
      page15.graphics.drawString(
        "Ei poikkeamia kohdassa 13.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartThirteen.length; i++) {
        page15.graphics.drawString(
          "Poikkeama: ${widget.problemsPartThirteen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page15.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartThirteen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page15.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartThirteen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartThirteen[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page15.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    //Poikkemat kohta 14
    final page16 = document.pages.add();
    marginTop = 15;

    page16.graphics.drawString(
      "14. Ilman puhtaus ja käsiteltävät aineet poikkeamat",
      PdfStandardFont(PdfFontFamily.helvetica, 20),
      bounds: Rect.fromLTWH(0, marginTop, 0, 0),
    );

    marginTop += 30;

    if (widget.problemsPartFourteen.isEmpty) {
      page16.graphics.drawString(
        "Ei poikkeamia kohdassa 14.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartFourteen.length; i++) {
        page16.graphics.drawString(
          "Poikkeama: ${widget.problemsPartFourteen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page16.graphics.drawString(
          "Vastuutaho: ${widget.accountablePeoplePartFourteen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page16.graphics.drawString(
          "Kiireellisyys: ${widget.urgenciesPartFourteen[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsProblemsPartFourteen[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page16.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
        marginTop += 215;
      }
    }

    List<int> bytes = document.save();
    document.dispose();
    saveAndLaunchFile(bytes, "ElmeriPdf.pdf");
  }

  Future<void> saveAndLaunchFile(List<int> bytes, String filename) async {
    final path = (await getExternalStorageDirectory())?.path;
    final file = File("$path/$filename");
    await file.writeAsBytes(bytes, flush: true);
    OpenFile.open("$path/$filename");
  }
}
