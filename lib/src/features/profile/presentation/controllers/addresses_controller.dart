import 'package:eightyythree_company_task/src/features/profile/data/models/address.dart';
import 'package:get/get.dart';

class AddressesController extends GetxController{

  Address? _selectedAddress;
  Address? get selectedAddress => _selectedAddress;

  void selectAddress(Address? address){
    _selectedAddress = address;
    update();
  }

  List<Address?>? _addressesList = [
    Address(id: 1, title: 'Home Address', street: 'Mustafa St.', description: "Mustafa St. No:2 Street x12",),
    Address(id: 2, title: 'Office Address', street: 'Oxford Street', description: "Axis Istanbul, B2 Blok Floor 2, Office 11",),
  ];

  List<Address?>? get addressesList => _addressesList;
}