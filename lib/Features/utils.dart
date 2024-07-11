import 'package:intl/intl.dart';

String getNaira(){
  final format = NumberFormat.simpleCurrency(name: "NGN");
  return format.currencySymbol;
}
final String ApiUrl = "https://medpay-tracka-backend.onrender.com";