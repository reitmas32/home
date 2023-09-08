import 'package:home/models/developer.dart';

List<Developer> GetDevelopers() {
  if (developersCollection.isEmpty) {
    developersCollection.add(
      Developer(
        name: 'Lisette HG',
        img:
            'https://raw.githubusercontent.com/RoniHernandez99/yonesto_beta/master/src/apps/core/static/img/LISS.jpg',
      ),
    );
    developersCollection.add(
      Developer(
        name: 'Roni Hernández',
        img:
            'https://raw.githubusercontent.com/RoniHernandez99/yonesto_beta/master/src/apps/core/static/img/RONI.jpg',
      ),
    );
    developersCollection.add(
      Developer(
        name: 'Uriel Castillo',
        img:
            'https://raw.githubusercontent.com/RoniHernandez99/yonesto_beta/master/src/apps/core/static/img/URIEL.jpg',
      ),
    );
    developersCollection.add(
      Developer(
        name: 'Andres Serna',
        img:
            'https://raw.githubusercontent.com/RoniHernandez99/yonesto_beta/master/src/apps/core/static/img/ANDRES.jpg',
      ),
    );
    developersCollection.add(
      Developer(
        name: 'Isra Mejía',
        img:
            'https://raw.githubusercontent.com/RoniHernandez99/yonesto_beta/master/src/apps/core/static/img/ISRA.jpg',
      ),
    );
    developersCollection.add(
      Developer(
        name: 'David Villagrán',
        img:
            'https://raw.githubusercontent.com/RoniHernandez99/yonesto_beta/master/src/apps/core/static/img/DAVID.jpg',
      ),
    );
    developersCollection.add(
      Developer(
        name: 'Cruz Sergio',
        img:
            'https://raw.githubusercontent.com/RoniHernandez99/yonesto_beta/master/src/apps/core/static/img/INGE.jpg',
      ),
    );
  }
  return developersCollection;
}

List<Developer> developersCollection = [];
