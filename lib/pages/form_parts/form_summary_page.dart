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

class FormSummaryPage extends StatefulWidget {
  String currentRoom;
  List accountablePeople;
  String date;
  int thingsOk1;
  int thingsNotOk1;
  List problemCardsPartOne;
  List problemsPartOne;
  List accountablePeoplePartOne;
  List urgenciesPartOne;
  List imgUrlsPartOne;
  int thingsOk2;
  int thingsNotOk2;
  List problemCardsPartTwo;
  List problemsPartTwo;
  List accountablePeoplePartTwo;
  List urgenciesPartTwo;
  List imgUrlsPartTwo;
  int thingsOk3;
  int thingsNotOk3;
  List problemCardsPartThree;
  List problemsPartThree;
  List accountablePeoplePartThree;
  List urgenciesPartThree;
  List imgUrlsPartThree;
  int thingsOk4;
  int thingsNotOk4;
  List problemCardsPartFour;
  List problemsPartFour;
  List accountablePeoplePartFour;
  List urgenciesPartFour;
  List imgUrlsPartFour;
  int thingsOk5;
  int thingsNotOk5;
  List problemCardsPartFive;
  List problemsPartFive;
  List accountablePeoplePartFive;
  List urgenciesPartFive;
  List imgUrlsPartFive;
  int thingsOk6;
  int thingsNotOk6;
  List problemCardsPartSix;
  List problemsPartSix;
  List accountablePeoplePartSix;
  List urgenciesPartSix;
  List imgUrlsPartSix;
  int thingsOk7;
  int thingsNotOk7;
  List problemCardsPartSeven;
  List problemsPartSeven;
  List accountablePeoplePartSeven;
  List urgenciesPartSeven;
  List imgUrlsPartSeven;
  int thingsOk8;
  int thingsNotOk8;
  List problemCardsPartEight;
  List problemsPartEight;
  List accountablePeoplePartEight;
  List urgenciesPartEight;
  List imgUrlsPartEight;
  int thingsOk9;
  int thingsNotOk9;
  List problemCardsPartNine;
  List problemsPartNine;
  List accountablePeoplePartNine;
  List urgenciesPartNine;
  List imgUrlsPartNine;
  int thingsOk10;
  int thingsNotOk10;
  List problemCardsPartTen;
  List problemsPartTen;
  List accountablePeoplePartTen;
  List urgenciesPartTen;
  List imgUrlsPartTen;
  int thingsOk11;
  int thingsNotOk11;
  List problemCardsPartEleven;
  List problemsPartEleven;
  List accountablePeoplePartEleven;
  List urgenciesPartEleven;
  List imgUrlsPartEleven;
  int thingsOk12;
  int thingsNotOk12;
  List problemCardsPartTwelve;
  List problemsPartTwelve;
  List accountablePeoplePartTwelve;
  List urgenciesPartTwelve;
  List imgUrlsPartTwelve;
  int thingsOk13;
  int thingsNotOk13;
  List problemCardsPartThirteen;
  List problemsPartThirteen;
  List accountablePeoplePartThirteen;
  List urgenciesPartThirteen;
  List imgUrlsPartThirteen;
  int thingsOk14;
  int thingsNotOk14;
  List problemCardsPartFourteen;
  List problemsPartFourteen;
  List accountablePeoplePartFourteen;
  List urgenciesPartFourteen;
  List imgUrlsPartFourteen;
  int allThingsOk;
  int allThingsNotOk;
  double index;

  FormSummaryPage({
    Key? key,
    required this.currentRoom,
    required this.accountablePeople,
    required this.date,
    required this.thingsOk1,
    required this.thingsNotOk1,
    required this.problemCardsPartOne,
    required this.problemsPartOne,
    required this.accountablePeoplePartOne,
    required this.urgenciesPartOne,
    required this.imgUrlsPartOne,
    required this.thingsOk2,
    required this.thingsNotOk2,
    required this.problemCardsPartTwo,
    required this.problemsPartTwo,
    required this.accountablePeoplePartTwo,
    required this.urgenciesPartTwo,
    required this.imgUrlsPartTwo,
    required this.thingsOk3,
    required this.thingsNotOk3,
    required this.problemCardsPartThree,
    required this.problemsPartThree,
    required this.accountablePeoplePartThree,
    required this.urgenciesPartThree,
    required this.imgUrlsPartThree,
    required this.thingsOk4,
    required this.thingsNotOk4,
    required this.problemCardsPartFour,
    required this.problemsPartFour,
    required this.accountablePeoplePartFour,
    required this.urgenciesPartFour,
    required this.imgUrlsPartFour,
    required this.thingsOk5,
    required this.thingsNotOk5,
    required this.problemCardsPartFive,
    required this.problemsPartFive,
    required this.accountablePeoplePartFive,
    required this.urgenciesPartFive,
    required this.imgUrlsPartFive,
    required this.thingsOk6,
    required this.thingsNotOk6,
    required this.problemCardsPartSix,
    required this.problemsPartSix,
    required this.accountablePeoplePartSix,
    required this.urgenciesPartSix,
    required this.imgUrlsPartSix,
    required this.thingsOk7,
    required this.thingsNotOk7,
    required this.problemCardsPartSeven,
    required this.problemsPartSeven,
    required this.accountablePeoplePartSeven,
    required this.urgenciesPartSeven,
    required this.imgUrlsPartSeven,
    required this.thingsOk8,
    required this.thingsNotOk8,
    required this.problemCardsPartEight,
    required this.problemsPartEight,
    required this.accountablePeoplePartEight,
    required this.urgenciesPartEight,
    required this.imgUrlsPartEight,
    required this.thingsOk9,
    required this.thingsNotOk9,
    required this.problemCardsPartNine,
    required this.problemsPartNine,
    required this.accountablePeoplePartNine,
    required this.urgenciesPartNine,
    required this.imgUrlsPartNine,
    required this.thingsOk10,
    required this.thingsNotOk10,
    required this.problemCardsPartTen,
    required this.problemsPartTen,
    required this.accountablePeoplePartTen,
    required this.urgenciesPartTen,
    required this.imgUrlsPartTen,
    required this.thingsOk11,
    required this.thingsNotOk11,
    required this.problemCardsPartEleven,
    required this.problemsPartEleven,
    required this.accountablePeoplePartEleven,
    required this.urgenciesPartEleven,
    required this.imgUrlsPartEleven,
    required this.thingsOk12,
    required this.thingsNotOk12,
    required this.problemCardsPartTwelve,
    required this.problemsPartTwelve,
    required this.accountablePeoplePartTwelve,
    required this.urgenciesPartTwelve,
    required this.imgUrlsPartTwelve,
    required this.thingsOk13,
    required this.thingsNotOk13,
    required this.problemCardsPartThirteen,
    required this.problemsPartThirteen,
    required this.accountablePeoplePartThirteen,
    required this.urgenciesPartThirteen,
    required this.imgUrlsPartThirteen,
    required this.thingsOk14,
    required this.thingsNotOk14,
    required this.problemCardsPartFourteen,
    required this.problemsPartFourteen,
    required this.accountablePeoplePartFourteen,
    required this.urgenciesPartFourteen,
    required this.imgUrlsPartFourteen,
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
              Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainMenu()));
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
                          content: Text("Poikkeamassa on oltava kuva mukana!"),
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

    final page3 = document.pages.add();
    marginTop = 15;

    if (widget.problemsPartOne.isEmpty) {
      page3.graphics.drawString(
        "Ei poikkeamia kohdassa 1.",
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(0, marginTop, 0, 0),
      );
    } else {
      for (var i = 0; i < widget.problemsPartOne.length; i++) {
        page3.graphics.drawString(
          "${i + 1}. Poikkeama: ${widget.problemsPartOne[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page3.graphics.drawString(
          "${i + 1}. Vastuutaho : ${widget.accountablePeoplePartOne[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 15;
        page3.graphics.drawString(
          "${i + 1}. Urgency : ${widget.urgenciesPartOne[i]}",
          PdfStandardFont(PdfFontFamily.helvetica, 15),
          bounds: Rect.fromLTWH(0, marginTop, 0, 0),
        );
        marginTop += 20;
        var url = widget.imgUrlsPartOne[i];
        var response = await get(Uri.parse(url));
        var data = response.bodyBytes;
        PdfBitmap image = PdfBitmap(data);
        page3.graphics.drawImage(image, Rect.fromLTWH(0, marginTop, 200, 200));
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
