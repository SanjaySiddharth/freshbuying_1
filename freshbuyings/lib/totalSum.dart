class TotalCartSum {
  TotalCartSum({this.qty, this.prices});
  final List qty;
  final List prices;

  String totalSum() {
    int finalSum;
    int tempSum;
    for (int i = 0; i <= qty.length; i++) {
      tempSum = 0;
      tempSum = qty[i] * prices[i];
      finalSum = finalSum + tempSum;
    }
    return finalSum.toString();
  }
}
