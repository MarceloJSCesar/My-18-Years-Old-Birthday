import 'package:flutter_braintree/flutter_braintree.dart';

class PaymentService {
  Future payment(priceValue) async {
    BraintreeDropInRequest request = BraintreeDropInRequest(
      clientToken: 'sandbox_mf5y4kgv_nzfdz55q734ptf2h',
      collectDeviceData: true,
      paypalRequest: BraintreePayPalRequest(
        amount: priceValue,
        displayName: 'Marcelo Cesar',
      ),
      cardEnabled: true,
    );
    BraintreeDropInResult _paymentResult = await BraintreeDropIn.start(request);
    if (_paymentResult != null) {
      print(
        'nonce: ${_paymentResult.paymentMethodNonce.nonce}, description: ${_paymentResult.paymentMethodNonce.description}',
      );
    }
  }
}
