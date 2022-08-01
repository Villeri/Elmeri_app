import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmeri_sovellus/pages/form_parts/form_summary_page.dart';
import 'package:elmeri_sovellus/widgets/form_card_widget.dart';
import 'package:elmeri_sovellus/widgets/next_button.dart';
import 'package:elmeri_sovellus/widgets/problem_card_problems_widget.dart';
import 'package:elmeri_sovellus/widgets/save_problem_button_widget.dart';
import 'package:elmeri_sovellus/widgets/select_image_button_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import '../../api/firebase_file_api.dart';
import '../../models/problem_data_model.dart';
import '../instructions/instructions_page.dart';
import 'form_part13_page.dart';

class FormPartTwelvePage extends StatefulWidget {
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

  FormPartTwelvePage({
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
  }) : super(key: key);

  @override
  State<FormPartTwelvePage> createState() => _FormPartTwelvePageState();
}

class _FormPartTwelvePageState extends State<FormPartTwelvePage> {
  int thingsOk12 = 0;
  int thingsNotOk12 = 0;
  TextEditingController problemTwelveController = TextEditingController();
  List problemsAccountablePeople = [];
  String currentUrgency = "Matala";
  List<String> urgencyValues = ["Matala", "Normaali", "Korkea"];
  File? file;
  int problem12Id = 1;
  final ProblemData _problemData = ProblemData();
  UploadTask? task;
  List problemsPartTwelve = [];
  List accountablePeoplePartTwelve = [];
  List urgenciesPartTwelve = [];
  List imgUrlsProblemsPartTwelve = [];
  List<Widget> problemCardsPartTwelve = [];

  @override
  void initState() {
    super.initState();
    problemsAccountablePeople = widget.accountablePeople;
  }

  @override
  Widget build(BuildContext context) {
    final fileName =
        file != null ? basename(file!.path) : "Tiedostoa ei valittu.";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Työympäristötekijät"),
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InstructionPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              FormCardWidget(
                headerText: "12. Valaistus",
                thingsOk: thingsOk12.toString(),
                thingsNotOk: thingsNotOk12.toString(),
                plusThingsOk: plusThingsOkPartTwelve,
                minusThingsOk: minusThingsOkPartTwelve,
                plusThingsNotOk: plusThingsNotOkPartTwelve,
                minusThingsNotOk: minusThingsNotOkPartTwelve,
              ),
              const SizedBox(height: 20),
              Card(
                borderOnForeground: true,
                child: Column(
                  children: [
                    Text("Tila: ${widget.currentRoom}",
                        style: const TextStyle(fontSize: 15)),
                    const SizedBox(height: 15),
                    const Text(
                      "Poikkeama:",
                      style: TextStyle(fontSize: 15),
                    ),
                    ProblemCardProblemsWidget(
                      controller: problemTwelveController,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Vastuutahot:",
                      style: TextStyle(fontSize: 15),
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: problemsAccountablePeople.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: UniqueKey(),
                          direction: DismissDirection.endToStart,
                          onDismissed: (_) {
                            setState(() {
                              problemsAccountablePeople.removeAt(index);
                            });
                          },
                          background: Container(
                            color: Colors.red,
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            alignment: Alignment.centerRight,
                            child:
                                const Icon(Icons.delete, color: Colors.white),
                          ),
                          child: Card(
                            child: ListTile(
                              title: Text(problemsAccountablePeople[index]),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Kiireellisyys:",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: DropdownButton(
                        value: currentUrgency,
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: urgencyValues.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            currentUrgency = newValue!;
                          });
                        },
                      ),
                    ),
                    SelectImageButtonWidget(onPressed: selectImage),
                    Text(
                      fileName,
                      style: const TextStyle(fontSize: 15),
                    ),
                    SaveProblemButtonWidget(
                      onPressed: file != null
                          ? () {
                              saveDataToDatabase();
                              setState(() {
                                problemsPartTwelve
                                    .add(problemTwelveController.text);
                                accountablePeoplePartTwelve
                                    .add(accountablePeoplePartTwelve);
                                urgenciesPartTwelve.add(currentUrgency);
                                problemCardsPartTwelve.add(
                                  Card(
                                    child: Column(
                                      children: [
                                        Text(
                                            "Poikkeama: ${problemTwelveController.text}",
                                            style:
                                                const TextStyle(fontSize: 15)),
                                        const Text("Havainnoitsijat:",
                                            style: TextStyle(fontSize: 15)),
                                        Center(
                                          child: ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              shrinkWrap: true,
                                              itemCount:
                                                  problemsAccountablePeople
                                                      .length,
                                              itemBuilder: (context, index) {
                                                return Text(
                                                    problemsAccountablePeople[
                                                        index]);
                                              }),
                                        ),
                                        Text("Kiireellisyys: $currentUrgency",
                                            style:
                                                const TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                  ),
                                );
                              });
                            }
                          : () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content:
                                    Text("Poikkeamassa on oltava kuva mukana!"),
                                duration: Duration(milliseconds: 1500),
                              ));
                            },
                    )
                  ],
                ),
              ),
              task != null ? buildUploadStatus(task!) : Container(),
              NextButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FormPartThirteenPage(
                              currentRoom: widget.currentRoom,
                              accountablePeople: widget.accountablePeople,
                              date: widget.date,
                              thingsOk1: widget.thingsOk1,
                              thingsNotOk1: widget.thingsNotOk1,
                              problemCardsPartOne: widget.problemCardsPartOne,
                              problemsPartOne: widget.problemsPartOne,
                              accountablePeoplePartOne:
                                  widget.accountablePeople,
                              urgenciesPartOne: widget.urgenciesPartOne,
                              imgUrlsPartOne: widget.imgUrlsPartOne,
                              accountablePeoplePartTwo:
                                  widget.accountablePeoplePartTwo,
                              imgUrlsPartTwo: widget.imgUrlsPartTwo,
                              problemCardsPartTwo: widget.problemCardsPartTwo,
                              problemsPartTwo: widget.problemsPartTwo,
                              thingsNotOk2: widget.thingsNotOk2,
                              thingsOk2: widget.thingsOk1,
                              urgenciesPartTwo: widget.urgenciesPartTwo,
                              accountablePeoplePartThree:
                                  widget.accountablePeoplePartThree,
                              imgUrlsPartThree: widget.imgUrlsPartThree,
                              problemCardsPartThree:
                                  widget.problemCardsPartThree,
                              problemsPartThree: widget.problemsPartThree,
                              thingsNotOk3: widget.thingsNotOk3,
                              thingsOk3: widget.thingsOk3,
                              urgenciesPartThree: widget.urgenciesPartThree,
                              accountablePeoplePartFour:
                                  widget.accountablePeoplePartFour,
                              imgUrlsPartFour: widget.imgUrlsPartFour,
                              problemCardsPartFour: widget.problemCardsPartFour,
                              problemsPartFour: widget.problemsPartFour,
                              thingsNotOk4: widget.thingsNotOk4,
                              thingsOk4: widget.thingsOk4,
                              urgenciesPartFour: widget.urgenciesPartFour,
                              accountablePeoplePartFive:
                                  widget.accountablePeoplePartFive,
                              imgUrlsPartFive: widget.imgUrlsPartFive,
                              problemCardsPartFive: widget.problemCardsPartFive,
                              problemsPartFive: widget.problemsPartFive,
                              thingsNotOk5: widget.thingsNotOk5,
                              thingsOk5: widget.thingsOk5,
                              urgenciesPartFive: widget.urgenciesPartFive,
                              accountablePeoplePartSix:
                                  widget.accountablePeoplePartSix,
                              imgUrlsPartSix: widget.imgUrlsPartSix,
                              problemCardsPartSix: widget.problemCardsPartSix,
                              problemsPartSix: widget.problemsPartSix,
                              thingsNotOk6: widget.thingsNotOk6,
                              thingsOk6: widget.thingsOk6,
                              urgenciesPartSix: widget.urgenciesPartSix,
                              accountablePeoplePartSeven:
                                  widget.accountablePeoplePartSeven,
                              imgUrlsPartSeven: widget.imgUrlsPartSeven,
                              problemCardsPartSeven:
                                  widget.problemCardsPartSeven,
                              problemsPartSeven: widget.problemsPartSeven,
                              thingsNotOk7: widget.thingsNotOk7,
                              thingsOk7: widget.thingsOk7,
                              urgenciesPartSeven: widget.urgenciesPartSeven,
                              accountablePeoplePartEight:
                                  widget.accountablePeoplePartEight,
                              imgUrlsPartEight: widget.imgUrlsPartEight,
                              problemCardsPartEight:
                                  widget.problemCardsPartEight,
                              problemsPartEight: widget.problemsPartEight,
                              thingsNotOk8: widget.thingsNotOk8,
                              thingsOk8: widget.thingsOk8,
                              urgenciesPartEight: widget.urgenciesPartEight,
                              accountablePeoplePartNine:
                                  widget.accountablePeoplePartNine,
                              imgUrlsPartNine: widget.imgUrlsPartNine,
                              problemCardsPartNine: widget.problemCardsPartNine,
                              problemsPartNine: widget.problemsPartNine,
                              thingsNotOk9: widget.thingsNotOk9,
                              thingsOk9: widget.thingsOk9,
                              urgenciesPartNine: widget.urgenciesPartNine,
                              accountablePeoplePartTen:
                                  widget.accountablePeoplePartTen,
                              imgUrlsPartTen: widget.imgUrlsPartTen,
                              problemCardsPartTen: widget.problemCardsPartTen,
                              problemsPartTen: widget.problemsPartTen,
                              thingsNotOk10: widget.thingsNotOk10,
                              thingsOk10: widget.thingsOk10,
                              urgenciesPartTen: widget.urgenciesPartTen,
                              accountablePeoplePartEleven:
                                  widget.accountablePeoplePartEleven,
                              imgUrlsPartEleven: widget.imgUrlsPartEleven,
                              problemCardsPartEleven:
                                  widget.problemCardsPartEleven,
                              problemsPartEleven: widget.problemsPartEleven,
                              thingsNotOk11: widget.thingsNotOk11,
                              thingsOk11: widget.thingsOk11,
                              urgenciesPartEleven: widget.urgenciesPartEleven,
                              accountablePeoplePartTwelve:
                                  accountablePeoplePartTwelve,
                              imgUrlsPartTwelve: imgUrlsProblemsPartTwelve,
                              problemCardsPartTwelve: problemCardsPartTwelve,
                              problemsPartTwelve: problemsPartTwelve,
                              thingsNotOk12: thingsNotOk12,
                              thingsOk12: thingsOk12,
                              urgenciesPartTwelve: urgenciesPartTwelve,
                            )));
              })
            ],
          ),
        ),
      ),
    );
  }

  plusThingsOkPartTwelve() {
    setState(() {
      thingsOk12++;
    });
  }

  minusThingsOkPartTwelve() {
    if (thingsOk12 > 0) {
      setState(() {
        thingsOk12--;
      });
    }
  }

  plusThingsNotOkPartTwelve() {
    setState(() {
      thingsNotOk12++;
    });
  }

  minusThingsNotOkPartTwelve() {
    if (thingsNotOk12 > 0) {
      setState(() {
        thingsNotOk12--;
      });
    }
  }

  Future selectImage() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    final path = result.files.single.path!;
    setState(() => file = File(path));
  }

  Future saveDataToDatabase() async {
    if (file == null) return;
    final fileName = "part12problem$problem12Id";
    final destination = "files/$fileName";
    _problemData.problem = problemTwelveController.text.trim();
    _problemData.accountablePeople = problemsAccountablePeople;
    _problemData.urgency = currentUrgency;
    _problemData.problemId = problem12Id.toString();
    task = FirebaseApi.uploadFile(destination, file!);
    setState(() {});
    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    // ignore: avoid_print
    print("Download-link: $urlDownload");
    _problemData.urlDownload = urlDownload;
    await FirebaseFirestore.instance
        .collection("problems")
        .add(_problemData.toJson());
    setState(() {
      problem12Id++;
      imgUrlsProblemsPartTwelve.add(urlDownload);
    });
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
        stream: task.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final snap = snapshot.data!;
            final progress = snap.bytesTransferred / snap.totalBytes;
            final percentage = (progress * 100).toStringAsFixed(2);

            return Text(
              "$percentage %",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            );
          } else {
            return Container();
          }
        },
      );
}
