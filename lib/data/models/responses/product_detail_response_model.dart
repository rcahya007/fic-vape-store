// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final productDetailResponseModel = productDetailResponseModelFromJson(jsonString);

import 'dart:convert';

class ProductDetailResponseModel {
  ProductDetailResponseModelData? data;
  Meta? meta;

  ProductDetailResponseModel({
    this.data,
    this.meta,
  });

  factory ProductDetailResponseModel.fromRawJson(String str) =>
      ProductDetailResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductDetailResponseModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailResponseModel(
        data: json["data"] == null
            ? null
            : ProductDetailResponseModelData.fromJson(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "meta": meta?.toJson(),
      };

  @override
  bool operator ==(covariant ProductDetailResponseModel other) {
    if (identical(this, other)) return true;

    return other.meta == meta;
  }

  @override
  int get hashCode => meta.hashCode;
}

class ProductDetailResponseModelData {
  int? id;
  PurpleAttributes? attributes;

  ProductDetailResponseModelData({
    this.id,
    this.attributes,
  });

  factory ProductDetailResponseModelData.fromRawJson(String str) =>
      ProductDetailResponseModelData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductDetailResponseModelData.fromJson(Map<String, dynamic> json) =>
      ProductDetailResponseModelData(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : PurpleAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };

  @override
  bool operator ==(covariant ProductDetailResponseModelData other) {
    if (identical(this, other)) return true;

    return other.id == id && other.attributes == attributes;
  }

  @override
  int get hashCode => id.hashCode ^ attributes.hashCode;
}

class PurpleAttributes {
  String? productName;
  String? productDescription;
  bool? isSold;
  int? productPrice;
  DateTime? productRelease;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  int? productStock;
  ProductCover? productCover;

  PurpleAttributes({
    this.productName,
    this.productDescription,
    this.isSold,
    this.productPrice,
    this.productRelease,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.productStock,
    this.productCover,
  });

  factory PurpleAttributes.fromRawJson(String str) =>
      PurpleAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
        productName: json["product_name"],
        productDescription: json["product_description"],
        isSold: json["is_sold"],
        productPrice: json["product_price"],
        productRelease: json["product_release"] == null
            ? null
            : DateTime.parse(json["product_release"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        productStock: json["product_stock"],
        productCover: json["product_cover"] == null
            ? null
            : ProductCover.fromJson(json["product_cover"]),
      );

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "product_description": productDescription,
        "is_sold": isSold,
        "product_price": productPrice,
        "product_release":
            "${productRelease!.year.toString().padLeft(4, '0')}-${productRelease!.month.toString().padLeft(2, '0')}-${productRelease!.day.toString().padLeft(2, '0')}",
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "product_stock": productStock,
        "product_cover": productCover?.toJson(),
      };

  @override
  bool operator ==(covariant PurpleAttributes other) {
    if (identical(this, other)) return true;

    return other.productName == productName &&
        other.productDescription == productDescription &&
        other.isSold == isSold &&
        other.productPrice == productPrice &&
        other.productRelease == productRelease &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.publishedAt == publishedAt &&
        other.productStock == productStock &&
        other.productCover == productCover;
  }

  @override
  int get hashCode {
    return productName.hashCode ^
        productDescription.hashCode ^
        isSold.hashCode ^
        productPrice.hashCode ^
        productRelease.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        publishedAt.hashCode ^
        productStock.hashCode ^
        productCover.hashCode;
  }
}

class ProductCover {
  ProductCoverData? data;

  ProductCover({
    this.data,
  });

  factory ProductCover.fromRawJson(String str) =>
      ProductCover.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductCover.fromJson(Map<String, dynamic> json) => ProductCover(
        data: json["data"] == null
            ? null
            : ProductCoverData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class ProductCoverData {
  int? id;
  FluffyAttributes? attributes;

  ProductCoverData({
    this.id,
    this.attributes,
  });

  factory ProductCoverData.fromRawJson(String str) =>
      ProductCoverData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductCoverData.fromJson(Map<String, dynamic> json) =>
      ProductCoverData(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : FluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };

  @override
  bool operator ==(covariant ProductCoverData other) {
    if (identical(this, other)) return true;

    return other.id == id && other.attributes == attributes;
  }

  @override
  int get hashCode => id.hashCode ^ attributes.hashCode;
}

class FluffyAttributes {
  String? name;
  dynamic alternativeText;
  dynamic caption;
  int? width;
  int? height;
  Formats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  FluffyAttributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  factory FluffyAttributes.fromRawJson(String str) =>
      FluffyAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) =>
      FluffyAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats:
            json["formats"] == null ? null : Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats?.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };

  @override
  bool operator ==(covariant FluffyAttributes other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.alternativeText == alternativeText &&
        other.caption == caption &&
        other.width == width &&
        other.height == height &&
        other.formats == formats &&
        other.hash == hash &&
        other.ext == ext &&
        other.mime == mime &&
        other.size == size &&
        other.url == url &&
        other.previewUrl == previewUrl &&
        other.provider == provider &&
        other.providerMetadata == providerMetadata &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        alternativeText.hashCode ^
        caption.hashCode ^
        width.hashCode ^
        height.hashCode ^
        formats.hashCode ^
        hash.hashCode ^
        ext.hashCode ^
        mime.hashCode ^
        size.hashCode ^
        url.hashCode ^
        previewUrl.hashCode ^
        provider.hashCode ^
        providerMetadata.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}

class Formats {
  Small? thumbnail;
  Small? small;

  Formats({
    this.thumbnail,
    this.small,
  });

  factory Formats.fromRawJson(String str) => Formats.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: json["thumbnail"] == null
            ? null
            : Small.fromJson(json["thumbnail"]),
        small: json["small"] == null ? null : Small.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail?.toJson(),
        "small": small?.toJson(),
      };

  @override
  bool operator ==(covariant Formats other) {
    if (identical(this, other)) return true;

    return other.thumbnail == thumbnail && other.small == small;
  }

  @override
  int get hashCode => thumbnail.hashCode ^ small.hashCode;
}

class Small {
  String? name;
  String? hash;
  String? ext;
  String? mime;
  dynamic path;
  int? width;
  int? height;
  double? size;
  String? url;

  Small({
    this.name,
    this.hash,
    this.ext,
    this.mime,
    this.path,
    this.width,
    this.height,
    this.size,
    this.url,
  });

  factory Small.fromRawJson(String str) => Small.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Small.fromJson(Map<String, dynamic> json) => Small(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "url": url,
      };

  @override
  bool operator ==(covariant Small other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.hash == hash &&
        other.ext == ext &&
        other.mime == mime &&
        other.path == path &&
        other.width == width &&
        other.height == height &&
        other.size == size &&
        other.url == url;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        hash.hashCode ^
        ext.hashCode ^
        mime.hashCode ^
        path.hashCode ^
        width.hashCode ^
        height.hashCode ^
        size.hashCode ^
        url.hashCode;
  }
}

class Meta {
  Meta();

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta();

  Map<String, dynamic> toJson() => {};
}