 import 'package:flutter/material.dart';

import 'mesWidgets.dart';

const List<List<String>> meswidgets = [
  ['Draggable',
    "Ce widget permet de rendre le widget qu'il prend comme enfant deplacable. Lors du depalcement, le widget enfant se depalce avec une donnée (data) qui peut etre differents types couleur, entier, chaines de caractere ... Les propriétés telles que le feedback et le child doivent prendre les memes données"
  ],
  ['Stack', 'Ce widget permet de superposer tous ses enfants'],

  ['IndexedStack',
    "Ce widget permet dafficher a l'ecran le widget enfant indexé. Il fonctionne avec les index."],

  ['Flexible',
    "C'est un widget qui controle le comportement de son enfant. Il donne a possibilité a son enfant de se developper pour remplir l'espace disponible"],

  ['Spacer',
    "Il permet de creer un espacement entre deux widgets. Il occupera tout l'espace disponible"],

  ['ConstrainedBox',
    "Il permet dimposer une contrainte a son enfant"],

  ['LimitedBox',
    "Contrairement a ConstrainedBox, il permet d'imposer une hauteur et une largeur maximale que son widget enfant ne devra pas depasser"],

  ['AspectRatio',
    "Il permet de donner un format a son widget enfant en faisant un rapport hauteur/largeur"],

  ['MediaQuery', "Il permet d'obtenir des parametres concernant l'appareil utilisé, on pourrait s'en servir pour obtenir et utiliser la hauteur ou la largeur de l'ecran"],

  ['Placeholoder', "Il permet de dessiner une boite dans laquelle l'on pourrait placer un widget"],


  ['ReorderableListView', 'Il permet de creer une lsie de widget reordonnable. Avec ReorderableListView on pourra changer la disposition de nos widgets enfants a la volée'],

  ['RichText',
    "Ce widget permet d'enrichir (mise en forme, couleur...) un element (mot particulier) dans un texte"],

  ['AnimatedIcon',
    'Il permet de faire une animation des icones'],

  ['AnimatedPadding', "Il permet d'appliquer une animation sur son widget enfant pendant un temps lorsque ce dernier aura une modification sur sa marge interieure"],

  ['AnimatedPositioned',
    "Il permet de changer la position d'un widget durant un temps avec une animation"],

  ['AnimatedSwitcher',
    "Ce widget permet de faire une transition entre ces widgets enfants durant un temps"],

  ['AnimatedList', "Il permet de faire animation lors de l'insertion ou de la suppression d'un element dans une liste"],

  ['AnimatedOpacity', "Il permet d'agir sur l'opacité d'un widget durant un temps determiné. l'opacité varie entre 0 et 1"],

  ['InheritedWidget', ''],

  ['Semantics', "Ce widget permet d'avoir l'aborescance des widgets utilisé dans l'application."],

];
