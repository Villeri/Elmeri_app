import 'package:flutter/material.dart';

class Sahkotekniikka4 extends StatefulWidget {
  const Sahkotekniikka4({Key? key}) : super(key: key);

  @override
  _Sahkotekniikka4State createState() => _Sahkotekniikka4State();
}

class _Sahkotekniikka4State extends State<Sahkotekniikka4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Sähkötekniikka 5B103")),
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
                  Image.asset("assets/images/5B103.jpg"),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Ohjeet:",
                        style: Theme.of(context).textTheme.headline5),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Tilassa suositellaan kuulosuojaimien käyttöä! Tila lukittu, kun ei ole käytössä.",
                        style: Theme.of(context).textTheme.headline6),
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
                        "Työskentely:\n1 havainto jokaisesta työntekijästä:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Suojaimet, vaatetus, riskinotto: Käytetään tehtävässä tarvittavia henkilökohtaisia suojaimia ja vaatteita. Ei oteta riskiä koneiden käydessä, nostoissa ym."),
                  ),
                  //ERGONOMIA
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Ergonomia:\n2 havaintoa jokaisesta työntekijästä:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Fyysinen kuormitus: Ei raskaita nostoja, yksipuolista toistoa, keventävät välineet."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Työpisteen ja välineiden ergonomia: Työpisteet säädettävissä tai oikein mitoitettu, työvälineet ergonomiset."),
                  ),
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
                      "Havainnoitavat laitteet (moottoreita ym. optuslaitteita):\nErityishuomio moottoreiden liikkuvien osien suojaukseen.",
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
                  //JÄRJESTYS
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Järjestys: 3 havaintoa tilasta:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Kulkuteiden ja lattioiden järjestys: Kulkutiet, koneiden ja laitteiden ympäristö (työskentelyalue) ja turva-alueet sekä lattiat järjestyksessä, ei esteitä pöytien edessä. Siivous ja siirrot tehtävissä."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Pöydät, päällyset, hyllyt: Järjestyksessä, ei tarpeetonta tavaraa."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Jäteastiat: Jäteastiat asianmukaiset, sopii lisää jätettä."),
                  ),
                  //TYÖYMPÄRISTÖTEKIJÄT
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Työympäristötekijät: 4 havaintoa tilasta:",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Melu: Ei kuulolle vaarallista melua (kuulosuojaimia käytettävä)."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Valaistus: Riittävä ja häikäisemätön."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Lämpöolosuhteet: Lämpötila työhön sopiva."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Ilman puhtaus ja käsiteltävät aineet: Esiintyykö mahdollisesti altistavia hajuja, pölyä"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
