import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String? title;
  final String? description;
  final String? category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final List<String?> tags;
  final String? brand;
  final String? sku;
  final double weight;
  final Dimensions dimensions;
  final String? warrantyInformation;
  final String? shippingInformation;
  final String? availabilityStatus;
  final List<Review> reviews;
  final String? returnPolicy;
  final int minimumOrderQuantity;
  final Meta meta;
  final String? barcode;
  final String? qrCode;
  final List<String?> images;
  final String? thumbnail;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.barcode,
    required this.qrCode,
    required this.images,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String?, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      price: (json['price'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      stock: json['stock'],
      tags: List<String?>.from(json['tags'] ?? []),
      brand: json['brand'],
      sku: json['sku'],
      weight: (json['weight'] as num).toDouble(),
      dimensions: Dimensions.fromJson(json['dimensions']),
      warrantyInformation: json['warrantyInformation'],
      shippingInformation: json['shippingInformation'],
      availabilityStatus: json['availabilityStatus'],
      reviews: (json['reviews'] as List)
          .map((review) => Review.fromJson(review))
          .toList(),
      returnPolicy: json['returnPolicy'],
      minimumOrderQuantity: json['minimumOrderQuantity'],
      meta: Meta.fromJson(json['meta']),
      barcode: json['barcode'],
      qrCode: json['qrCode'],
      images: List<String?>.from(json['images'] ?? []),
      thumbnail: json['thumbnail'],
    );
  }

  Map<String?, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'tags': tags,
      'brand': brand,
      'sku': sku,
      'weight': weight,
      'dimensions': dimensions.toJson(),
      'warrantyInformation': warrantyInformation,
      'shippingInformation': shippingInformation,
      'availabilityStatus': availabilityStatus,
      'reviews': reviews.map((review) => review.toJson()).toList(),
      'returnPolicy': returnPolicy,
      'minimumOrderQuantity': minimumOrderQuantity,
      'meta': meta.toJson(),
      'barcode': barcode,
      'qrCode': qrCode,
      'images': images,
      'thumbnail': thumbnail,
    };
  }

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        category,
        price,
        discountPercentage,
        rating,
        stock,
        tags,
        brand,
        sku,
        weight,
        dimensions,
        warrantyInformation,
        shippingInformation,
        availabilityStatus,
        reviews,
        returnPolicy,
        minimumOrderQuantity,
        meta,
        barcode,
        qrCode,
        images,
        thumbnail,
      ];
}

class Dimensions extends Equatable {
  final double width;
  final double height;
  final double depth;

  const Dimensions({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory Dimensions.fromJson(Map<String?, dynamic> json) {
    return Dimensions(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      depth: (json['depth'] as num).toDouble(),
    );
  }

  Map<String?, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
      'depth': depth,
    };
  }

  @override
  List<Object?> get props => [width, height, depth];
}

class Review extends Equatable {
  final int rating;
  final String? comment;
  final String? date;
  final String? reviewerName;
  final String? reviewerEmail;

  const Review({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory Review.fromJson(Map<String?, dynamic> json) {
    return Review(
      rating: json['rating'],
      comment: json['comment'],
      date: json['date'],
      reviewerName: json['reviewerName'],
      reviewerEmail: json['reviewerEmail'],
    );
  }

  Map<String?, dynamic> toJson() {
    return {
      'rating': rating,
      'comment': comment,
      'date': date,
      'reviewerName': reviewerName,
      'reviewerEmail': reviewerEmail,
    };
  }

  @override
  List<Object?> get props => [
        rating,
        comment,
        date,
        reviewerName,
        reviewerEmail,
      ];
}

class Meta extends Equatable {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? barcodeType;
  final String? qrCodeType;
  final String? promoCode;

  const Meta({
    required this.createdAt,
    required this.updatedAt,
    required this.barcodeType,
    required this.qrCodeType,
    this.promoCode,
  });

  factory Meta.fromJson(Map<String?, dynamic> json) {
    return Meta(
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      barcodeType: json['barcodeType'],
      qrCodeType: json['qrCodeType'],
      promoCode: json['promoCode'],
    );
  }

  Map<String?, dynamic> toJson() {
    return {
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'barcodeType': barcodeType,
      'qrCodeType': qrCodeType,
      'promoCode': promoCode,
    };
  }

  @override
  List<Object?> get props => [
        createdAt,
        updatedAt,
        barcodeType,
        qrCodeType,
        promoCode,
      ];
}