import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Item {
  String id;
  String name;
  String description;
  int price;
  bool inStock;
  String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.inStock,
      required this.imageUrl});

  String get formattedAvailability => inStock ? "Available" : "Out of stock";
  String get formattedPrice => Item.formatter.format(price);
  Color get availabilityColor => inStock ? Colors.grey : Colors.red;

  static final formatter =
      NumberFormat.currency(locale: 'id_ID', symbol: "Rp ");
  static List<Item> get dummyItems => [
        Item(
            id: "1",
            name: "CPU Rakitan Processor AMD Ryzen 3 RAM 8GB",
            description: 'Lorem Ipsum Dolor',
            price: 7000000,
            inStock: true,
            imageUrl:
                'https://cf.shopee.co.id/file/c5cd42353d7e0454cae3b89fe4f160e0'),
        Item(
            id: "2",
            name: "ASUS LED Monitor TUF Gaming 32 Inch",
            description: 'Lorem Ipsum Dolor Sit Amet',
            price: 7416000,
            inStock: true,
            imageUrl:
                'https://static.bmdstatic.com/pk/product/large/5df9a3e49ccd8.jpg'),
        Item(
            id: "3",
            name: "Redragon K599-KRS Wireless Mechanical Keyboard",
            description: 'Lorem Ipsum',
            price: 829000,
            inStock: true,
            imageUrl:
                'https://static.bmdstatic.com/gk/production/f9efba765ac10b2e3992d3d513150726.jpg'),
        Item(
            id: "4",
            name: "Havit Mouse RGB Backlit",
            description: 'Lorem Ipsum',
            price: 125000,
            inStock: true,
            imageUrl:
                'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//88/MTA-4516243/havit_havit_mouse_gaming_rgb_backlit_black_ms1001a_full06_o40u3q7l.jpg'),
        Item(
            id: "5",
            name: "VortexSeries VX5 PRO",
            description: 'Lorem Ipsum',
            price: 550000,
            inStock: true,
            imageUrl:
                'https://cf.shopee.co.id/file/363dfcd03cab1234b2e929a1e5254ecd'),
        Item(
            id: "6",
            name: "Lenovo Legion 5",
            description: 'Lorem Ipsum Dolor Sit Amet',
            price: 22199000,
            inStock: false,
            imageUrl:
                'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQDQBff9xR1DN-HAvRpfBnVoe9C0EezfMSsCdXkLaKCICpfjeuJGAux0hpHl1t_1t2wUMu-Ksm38S6CGQiy1YWCEfp0G0qGnjdlcQ-1ChAZax5vU34SOp5k2Q&usqp=CAE'),
      ];
}
