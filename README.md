# simple_payment_system_app

A new Flutter project.

## Getting Started

This project is a simple payment system using SOLID principles as following:
- An abstract class called "Payment" was created with "pay" method
- Two classes inherited from this class which called "CashPayment" and "CreditPayment"
- These two classes implemented "pay", each one with different implementation
- "PaymentProcess" class was created with an object of type "Payment" and "process" method
- This method was created to call the correct "pay" method according to the "paymentMethod" type
- In the main function, two objects of type "PaymentProcess" were created and used to call "process" function
- The first object used "CashPayment" to pay 200
- The second one used "CreditPayment" to pay 5000
