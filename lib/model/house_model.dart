import 'package:flutter/material.dart';


class HouseModel{
  String name,address,
  image;

  HouseModel({required this.name,required this.address,required this.image});

 static List<HouseModel> generateRecommended(){
    return[
      HouseModel(name: 'The Moon House', address:"Thakurgaon", image:'assets/images/house01.jpeg'),
      HouseModel(name: 'The Supper House', address:"Dhaka", image:'assets/images/house02.jpeg'),
      HouseModel(name: 'Chestnut House', address:"Ranger", image:'assets/images/house3.jpg'),
      HouseModel(name: 'Magnolia House', address:"Borda", image:'assets/images/house4.jpg'),
      HouseModel(name: 'Poppy House', address:"Dimapur", image:'assets/images/house5.jpg'),
      HouseModel(name: 'Russet House', address:"Usa", image:'assets/images/house6.jpg'),
      HouseModel(name: 'Paddock House', address:"Kamilla", image:'assets/images/house7.jpg'),
      HouseModel(name: 'Cruikshank House', address:"Dhaka", image:'assets/images/house8.jpg'),
      HouseModel(name: 'Turret House', address:"Boorishly", image:'assets/images/house9.jpeg'),
      HouseModel(name: 'Header House', address:"Calamari", image:'assets/images/house10.jpg'),

    ];
  }


  static List<HouseModel> generateBastOffer(){
    return[
      HouseModel(name: 'The Moon House', address:"Thakurgaon", image:'assets/images/offer01.jpeg'),
      HouseModel(name: 'The Sub House', address:"Dhaka", image:'assets/images/offer02.jpeg'),
      HouseModel(name: 'Cruikshank House', address:"Dhaka", image:'assets/images/offer3.jpg'),
      HouseModel(name: 'Turret House', address:"Boorishly", image:'assets/images/offer4.jpg'),
      HouseModel(name: 'Header House', address:"Calamari", image:'assets/images/offer5.jpg'),

    ];
  }



}