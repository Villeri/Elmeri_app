import 'package:flutter/material.dart';

class Automaatio2 extends StatefulWidget {
  const Automaatio2({Key? key}) : super(key: key);

  @override
  _Automaatio2State createState() => _Automaatio2State();
}

class _Automaatio2State extends State<Automaatio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Automaatio 5A101")),
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Kartta tilasta:",
                        style: Theme.of(context).textTheme.headline5),
                  ),
                  Image.asset("assets/images/5A101.jpg"),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Ohjeet:",
                        style: Theme.of(context).textTheme.headline5),
                  ),
                  //HAVAINNOINTITIHEYS
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Havainnointitiheys:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Kerran kuukaudessa lukuvuoden aikana"),
                  ),
                  //TYÖSKENTELY
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Työskentely:\n1 havainto opiskelijoista ryhmänä.\nPoikkeavista havainnoista jokaisesta merkintä:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Suojaimet, vaatetus, riskinotto: Käytetään tehtävässä tarvittavia henkilökohtaisia suojaimia ja vaatteita. Ei oteta riskiä koneiden käydessä, nostoissa ym."),
                  ),
                  //ERGONOMIA
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Ergonomia:\n2 havaintoa opiskelijoiden työskentelyolosuhteista:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Fyysinen kuormitus: Ei tarvita raskaita nostoja, yksipuolista toistoa, keventävät välineet."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Työpisteen ja välineiden ergonomia: Työpisteet säädettävissä tai oikein mitoitettu, työvälineet ergonomiset."),
                  ),
                  Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  //KONE- JA LAITETURVALLISUUS
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Kone- ja laiteturvallisuus: 2 havaintoa jokaisesta koneesta:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Havainnoitavat laitteet (4 laitetta):\nFesto-kappaletavara-automaatio\nRumpu\nYhteistyörobotti\nMobiilirobotti",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Siirrettävien opetuslaitteiden osalta tehdään yhteinen yleispiirteinen kuntohavainnointi. Mahdollisista poikkeamista tehdään kirjaus. Kiinteiden opetuspisteiden kunto tarkastetaan yleispiirteisesti havainnoimalla."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Koneiden kunto ja suojalaitteet: Koneet ja laitteet turvallisessa kunnossa, suojalaitteet kunnossa. Säilytys turvallista."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Koneiden hallintalaitteet ja merkintä: Hallintalaitteet merkitty, helposti saavutettavissa (käynnistys-, pysäytys-, ja säätölaitteet, hätäpysäytin)."),
                  ),
                  Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  //LIIKKUMISTURVALLISUUS
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Liikkumisturvallisuus: 2 havaintoa tilasta:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Kulkuteiden ja lattian rakenne: Lattian pinta ehjä, puhdas ja pitävä."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Poistumistiet: Poistumistiet merkitty näkyvästi, helppo pääsy, ei esteitä."),
                  ),
                  Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  //JÄRJESTYS
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Järjestys: 3 havaintoa tilasta:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Kulkuteiden ja lattioiden järjestys: Kulkutiet, koneiden ja laitteiden ympäristö (työskentelyalue ja turva-alueet sekä lattiat ja hyllyt järjestyksessä, ei esteitä hyllyjen ja laitteiden edessä. Siivous ja siirrot tehtävissä."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Pöydät, päällyset, hyllyt: Järjestyksessä, ei tarpeetonta tavaraa. Hyllyt tukevat, turvalliset."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Jäteastiat: Jäteastiat asianmukaiset, sopii lisää jätettä."),
                  ),
                  Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  //TYÖYMPÄRISTÖTEKIJÄT
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Työympäristötekijät: 4 havaintoa tilasta:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Melu: Ei kuulolle vaarallista melua."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Valaistus: Riittävä ja häikäisemätön. Vialliset valaisimet."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Lämpöolosuhteet: Lämpötila työhön sopiva."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Ilman puhtaus ja käsiteltävät aineet: Esiintyykö mahdollisesti altistavia hajuja."),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
