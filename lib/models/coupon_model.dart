class Coupon {
  final String id;
  final String hotelName;
  final String vendorId;
  final String couponCode;
  final int discount;
  final DateTime startDate;
  final DateTime endDate;
  final List<String> users;
  final bool isExpire;

  Coupon(
   {
      required this.hotelName, 
    required this.id,
    required this.vendorId,
    required this.couponCode,
    required this.discount,
    required this.startDate,
    required this.endDate,
    required this.users,
    required this.isExpire,
  });

  factory Coupon.fromJson(Map<String, dynamic> json, String name) {
    return Coupon(
      id: json['_id'],
      hotelName: name,
      vendorId: json['vendorId'],
      couponCode: json['couponCode'],
      discount: json['discount'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      users: List<String>.from(json['users']),
      isExpire: json['isExpire'],
    );
  }
}
