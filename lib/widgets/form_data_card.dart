import 'package:flutter/material.dart';

import '../models/form_data.model.dart';
import 'package:intl/intl.dart';

class DataCard extends StatelessWidget {
  final Data _data;
  List _dataIssues = [];

  DataCard(this._data);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Nimet: ${_data.names}",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("Tila: ${_data.room}",
                        style: Theme.of(context).textTheme.headline6)),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        "Päivämäärä: ${DateFormat("dd.MM.yyyy").format(_data.created!).toString()}",
                        style: Theme.of(context).textTheme.headline6)),
                Text("Kunnossa yhteensä: ${_data.allOk}"),
                Text("Ei kunnossa yhteensä: ${_data.allNotOk}"),
                Text("Indeksi: ${_data.index}%"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
