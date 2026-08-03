import 'package:flutter/material.dart';

class ProductCategory extends StatefulWidget {
 const ProductCategory({super.key});

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
            hint: Text("Pilih Kategori"),
            value: _selectedCategory,
            items: [
              DropdownMenuItem(
                value: "Elektronik",
                child: Text("Elektronik"),
              ),
              DropdownMenuItem(
                value: "Pakaian",
                child: Text("Pakaian"),
              ),
              DropdownMenuItem(
                value: "Makanan",
                child: Text("Makanan"),
              ),
              DropdownMenuItem(
                value: "Lainnya",
                child: Text("Lainnya"),
              ),
            ],
            onChanged: (value) {
              _selectedCategory = value;
              setState(() {});
            },
          ),

         SizedBox(height: 20),

          Text(
            _selectedCategory == null
                ? "Belum memilih kategori"
                : "Anda memilih kategori: $_selectedCategory",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}