void main() {
  String studentName = 'Ana Reyes';
  int blackPages = 24;
  int colorPages = 6;
  bool isMember = true;
  bool wantsBinding = true;

  const double bwRate = 2.50;
  const double colorRate = 8.25;
  const double memberDiscountAmount = 5.25;
  const double memberDiscountMin = 100.00;
  const double bindingFee = 35.75;
  const int pagesPerMinute = 8;

  double blackCost = blackPages * bwRate;
  double colorCost = colorPages * colorRate;
  int totalPages = blackPages + colorPages;
  double subtotal = blackCost + colorCost;

  bool discountApplies = isMember && subtotal >= memberDiscountMin;
  double totalAfterDiscount = discountApplies ? subtotal - memberDiscountAmount : subtotal;
  double finalTotal = wantsBinding ? totalAfterDiscount + bindingFee : totalAfterDiscount;

  int minutes = totalPages ~/ pagesPerMinute;

  String discountText = discountApplies ? '-PHP ${memberDiscountAmount.toStringAsFixed(2)}' : 'Not eligible';
  String bindingText = wantsBinding ? 'PHP ${bindingFee.toStringAsFixed(2)}' : 'None';

  print('===== Campus Print Shop =====');
  print('Student: $studentName');
  print('B&W: $blackPages pages x ${bwRate.toStringAsFixed(2)} = PHP ${blackCost.toStringAsFixed(2)}');
  print('Color: $colorPages pages x ${colorRate.toStringAsFixed(2)} = PHP ${colorCost.toStringAsFixed(2)}');
  print('Total pages: $totalPages');
  print('Subtotal: PHP ${subtotal.toStringAsFixed(2)}');
  print('Member discount: $discountText');
  print('Binding: $bindingText');
  print('TOTAL: PHP ${finalTotal.toStringAsFixed(2)}');
  print('Ready in about $minutes minutes');
  print('=============================');
}