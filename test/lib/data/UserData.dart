import 'package:test/modal/user.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
List<User> listUser = [
  User(
      id: 1,
      nom: 'Joana',
      post: 'Manager',
      numero: 92938764,
      email: 'joana@gmail.com',
      profil: '',
      color: Colors.grey
  ),
  User(
      id: 2,
      nom: 'Michael',
      post: 'Développeur',
      numero: 91482736,
      email: 'michael.dev@gmail.com',
      profil: '',
      color: Colors.green
  ),
  User(
      id: 3,
      nom: 'Amina',
      post: 'Designer UI/UX',
      numero: 97361284,
      email: 'amina.uiux@gmail.com',
      profil: '',
      color: Colors.brown
  ),
  User(
      id: 4,
      nom: 'Karim',
      post: 'Technicien réseau',
      numero: 90124578,
      email: 'karim.reseau@gmail.com',
      profil: '',
      color: Colors.deepPurple
  ),
  User(
      id: 5,
      nom: 'Sophie',
      post: 'Chargée RH',
      numero: 96378245,
      email: 'sophie.rh@gmail.com',
      profil: '',
      color: Colors.red
  ),
  User(
      id: 6,
      nom: 'Luc',
      post: 'Chef de projet',
      numero: 98541326,
      email: 'luc.projet@gmail.com',
      profil: '',
      color: Colors.lightGreenAccent
  ),
  User(
      id: 7,
      nom: 'Fatou',
      post: 'Analyste',
      numero: 91726548,
      email: 'fatou.analyste@gmail.com',
      profil: '',
      color: Colors.black
  ),
  User(
      id: 8,
      nom: 'Jean',
      post: 'Comptable',
      numero: 95673210,
      email: 'jean.compta@gmail.com',
      profil: '',
      color: Colors.blueGrey
  ),
  User(
      id: 9,
      nom: 'Nadia',
      post: 'Assistante',
      numero: 94567213,
      email: 'nadia.assist@gmail.com',
      profil: '',
      color: Colors.yellow
  ),
  User(
      id: 10,
      nom: 'Yao',
      post: 'Développeur',
      numero: 93458172,
      email: 'yao.dev@gmail.com',
      profil: '',
      color: Colors.blue
  ),
];
