class Uza_PricingCalc{
  // Calculate Price based on tax

  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxtAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxtAmount + shippingCost;
    return totalPrice;

  }

  // Calculate shipping cost 

  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax 

  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxtAmount = productPrice * taxRate;
  return taxtAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    return 0.10;
  }
  static double getShippingCost(String location){
    return 5.00;
  }
}