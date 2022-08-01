import 'package:flutter/material.dart';

class Automaatio3 extends StatefulWidget {
  const Automaatio3({Key? key}) : super(key: key);

  @override
  _Automaatio3State createState() => _Automaatio3State();
}

class _Automaatio3State extends State<Automaatio3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Automaatio 5A103")),
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
                  Image.asset("assets/images/5A103.jpg"),
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
                      "Havainnoitavat laitteet (1 laite):\nPilot-laitteisto",
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
                        "Koneiden kunto ja suojalaitteet: Koneet ja laitteet turvallisessa kunnossa, suojalaitteet kunnossa. Erityishuomio sähköturvallisuuteen."),
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
                        "Kulkuteiden ja lattioiden järjestys: Kulkutiet, koneiden ja laitteiden ympäristö (työskentelyalue) sekä lattiat järjestyksessä, ei esteitä työpöytien edessä."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Pöydät, päällyset, hyllyt: Työpisteiden pöydät järjestyksessä, ei tarpeetonta tavaraa."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Jäteastiat: Jäteastiat asianmukaiset."),
                  ),
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
                    child: Text("Valaistus: Riittävä ja häikäisemätön."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Lämpöolosuhteet: Lämpötila työhön sopiva, uunien vaikutus otetaan huomioon."),
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
