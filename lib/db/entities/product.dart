import 'package:uuid/uuid.dart';

class Product {
  String id; // Identificador único
  String name; // Nombre del producto
  String? description; // Descripción del producto
  String sku; // Código SKU
  String category; // Categoría
  int quantity; // Cantidad en inventario
  double price; // Precio unitario
  double cost; // Costo del producto
  String? supplier; // Proveedor
  String? location; // Ubicación física
  DateTime? expirationDate; // Fecha de vencimiento
  bool isActive; // Producto activo o no
  DateTime lastUpdated; // Última modificación

  Product({
    String? id,
    required this.name,
    this.description,
    required this.sku,
    required this.category,
    required this.quantity,
    required this.price,
    required this.cost,
    this.supplier,
    this.location,
    this.expirationDate,
    this.isActive = true,
    DateTime? lastUpdated,
  }) : id = id ?? const Uuid().v4(),
       lastUpdated = lastUpdated ?? DateTime.now();

  // Conversión a Map para almacenamiento (ej. sqflite)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'sku': sku,
      'category': category,
      'quantity': quantity,
      'price': price,
      'cost': cost,
      'supplier': supplier,
      'location': location,
      'expirationDate': expirationDate?.toIso8601String(),
      'isActive': isActive ? 1 : 0,
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }

  // Crear una instancia desde Map (ej. al leer de una DB)
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      sku: map['sku'],
      category: map['category'],
      quantity: map['quantity'],
      price: map['price'],
      cost: map['cost'],
      supplier: map['supplier'],
      location: map['location'],
      expirationDate:
          map['expirationDate'] != null
              ? DateTime.parse(map['expirationDate'])
              : null,
      isActive: map['isActive'] == 1,
      lastUpdated: DateTime.parse(map['lastUpdated']),
    );
  }
}
