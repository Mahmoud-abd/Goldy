class SilverPrice {
  final String currency;
  final String currencySymbol;
  final double exchangeRate;
  final String name;
  final double price;
  final String symbol;
  final DateTime updatedAt;
  final String updatedAtReadable;

  SilverPrice({
    required this.currency,
    required this.currencySymbol,
    required this.exchangeRate,
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory SilverPrice.fromJson(Map<String, dynamic> json) {
    return SilverPrice(
      currency: json['currency'] as String,
      currencySymbol: json['currencySymbol'] as String,
      exchangeRate: (json['exchangeRate'] as num).toDouble(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      symbol: json['symbol'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      updatedAtReadable: json['updatedAtReadable'] as String,
    );
  }
}