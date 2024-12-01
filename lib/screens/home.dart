import 'package:flutter/material.dart';
import '../models/clothes_model.dart';
import '../widgets/clothes_grid.dart';

final List<Clothes> clothes = [
  Clothes(
    id: 1,
    name: "SEQUINNED CROP TOP",
    image: 'https://static.zara.net/assets/public/54d1/e6b5/1e9346d794d7/bfe2941505ad/09740608600-p/09740608600-p.jpg?ts=1732723888245&w=1024',
    description: 'Sequinned top with a straight neckline and thin adjustable straps. Semi-sheer fabric with a lining. Side zip fastening.',
    price: 149.99,
  ),
  Clothes(
    id: 2,
    name: "BEADED FRINGE TULLE DRESS",
    image: 'https://static.zara.net/assets/public/6632/c7d9/550141a293d4/3e2abbc00ff0/07521946970-a3/07521946970-a3.jpg?ts=1732207115466&w=1024',
    description: 'Semi-sheer mini dress with a V-neck and thin straps. Embroidered detailing with contrasting bead, sequin and fringe appliqué.',
    price: 49.99,
  ),
  Clothes(
    id: 3,
    name: "WOOL BEADED JACKET",
    image: 'https://static.zara.net/assets/public/8fd3/daad/1d2d4f028849/ec5436537709/04192116800-a1/04192116800-a1.jpg?ts=1731669051111&w=1024',
    description: 'Jacket made of 100% wool with long sleeves. Finished with beaded appliqués. Concealed hook-and-eye fastening at the front.',
    price: 29.99,
  ),
  Clothes(
    id: 4,
    name: "LACE TRIM KNIT JACKET",
    image: 'https://static.zara.net/assets/public/6705/045f/3a4a46ba9ed6/6bd7b6c82b46/00014111803-a1/00014111803-a1.jpg?ts=1729845244440&w=1024',
    description: 'V-neck, long sleeve jacket. Featuring openwork knit with lace panels, ruffle trims and a front tie fastening.',
    price: 89.99,
  ),
  Clothes(
    id: 5,
    name: "WOOL CAPE",
    image: 'https://static.zara.net/assets/public/a4bb/0cce/9b4d4c3392bb/921704424c05/02063066712-p/02063066712-p.jpg?ts=1732786769723&w=1024',
    description: 'High-neck cape made of wool yarn. Matching lining. Front fastening with hidden buttons.',
    price: 199.99,
  ),
  Clothes(
    id: 6,
    name: "WOOL BLEND COAT",
    image: 'https://static.zara.net/assets/public/4d9b/b80d/39ed495abd28/c682196e2e70/09573757736-p/09573757736-p.jpg?ts=1730306445219&w=1024',
    description: 'Long coat made of a wool blend yarn. High neck and long sleeves with shoulder tabs. Front pockets. Matching adjustable fabric belt.',
    price: 89.99,
  ),
  Clothes(
    id: 7,
    name: "DOUBLE LAYER T-SHIRT",
    image: 'https://static.zara.net/assets/public/0ab2/2a89/17684a118a16/9cb13d889f73/05644997824-a1/05644997824-a1.jpg?ts=1732807926463&w=1024',
    description: 'Round neck long sleeve T-shirt. Finished with contrasting fabric.',
    price: 129.99,
  ),
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 28),
          ),
        ),
        title: const Text(
          "211001",
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 28),
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink.shade50, Colors.pink.shade100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClothesGrid(clothes: clothes),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink.shade100,
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded, size: 30),
      ),
    );
  }
}
