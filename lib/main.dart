import 'package:flutter/material.dart';

abstract class Payment {
  void pay(double amount);
}

class CashPayment implements Payment {
  @override
  void pay(double amount) {
    debugPrint('$amount is paid using cash');
  }
}

class CreditPayment implements Payment {
  @override
  void pay(double amount) {
    debugPrint('$amount is paid using credit card');
  }
}

class PaymentProcess {
  final Payment paymentMethod;
  PaymentProcess(this.paymentMethod);
  void process(double amount) {
    paymentMethod.pay(amount);
  }
}

void main() {
  //test cash payment
  PaymentProcess cashPaymentProcessor = PaymentProcess(CashPayment());
  cashPaymentProcessor.process(200);
  //test credit card payment
  PaymentProcess creditCardPaymentProcessor = PaymentProcess(CreditPayment());
  creditCardPaymentProcessor.process(5000);
}
