import 'package:rive/rive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'rive_model.dart' ; 

class NavItemModel {
  final String title; 
  final RiveModel rive; 



  NavItemModel({
    required this.rive , 
    required this.title 
  }); 


  // Khoi tao danh sach instances 
  static List<NavItemModel> bottomNavItems = [
    // Item 1 
    NavItemModel(rive: RiveModel(src : 'assets/RiveAssets/icons.riv' , artboard: 'CHAT', stateMachineName: 'CHAT_Interactivity' ), title: 'Chat'), 
    // Item 2 
    NavItemModel(rive: RiveModel(src: 'assets/RiveAssets/icons.riv' , artboard: 'SEARCH', stateMachineName: 'SEARCH_Interactivity'), title: 'Search'), 
    // Item 3 
    NavItemModel(rive: RiveModel(src: 'assets/RiveAssets/icons.riv', artboard: 'Timer', stateMachineName: 'TIMER_Interactivity'), title: 'Timer'),
    // Item 4 
    NavItemModel(rive: RiveModel(src: 'assets/RiveAssets/icons.riv', artboard: 'BELL', stateMachineName: 'BELL_Interactivity'), title: 'Notification'),
    // Item 4 


  ]; 




}