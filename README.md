# Week 7 Lab – Dart Fundamentals
Name: Shaira Danielle S. De Leon 
Section: BSIT 3.7 

## my Files
- campus_brew_receipt.dart – Campus Brew order receipt (Parts 2–8)
- print_shop.dart – Campus Print Shop bill (Part 10)

## How to run
Copy a file's code into https://dartpad.dev and click Run.

## Part 7 my answers
1. Ana got the voucher because she is a student (`isStudent == true`) and her subtotal of PHP 296.75 reached the minimum requirement of PHP 250 (`subtotal >= 250`).
2. Delivery was not free for Ana because it wasn't a pickup order (`isPickup == false`) and her total after applying the voucher (PHP 281.25) was under the PHP 300 requirement (`afterVoucher < 300`).
3. We used `~/` instead of `/` so that we get whole numbers for the reward points without any decimals.

## Part 8 results table
| Order | Student voucher | Delivery | TOTAL | Change | Points |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **A — Ana** | -PHP 15.50 | PHP 29.50 | PHP 310.75 | PHP 89.25 | 6 |
| **A with isStudent = false** | Not eligible | PHP 29.50 | PHP 326.25 | PHP 73.75 | 6 |
| **B — Ben** | Not eligible | FREE | PHP 295.75 | PHP 4.25 | 5 |
| **C — Carla** | -PHP 15.50 | FREE | PHP 301.50 | PHP 198.50 | 6 |

5. Carla got free delivery because her total after the voucher (PHP 301.50) met the PHP 300 minimum spend for free delivery.

## Part 9 debugging table
| Bug | What DartPad said (or printed) | What was wrong | Your fixed line |
| :---: | :--- | :--- | :--- |
| **1** | Error: Expected ';' after this. | Missing semicolon `;` at the end of the line. | `String drink = 'Iced Coffee';` |
| **2** | A value of type 'double' can't be assigned to a variable of type 'int'. | Assigned a decimal number (`65.25`) to an integer variable. | `double price = 65.25;` |
| **3** | Can't assign to the final variable 'shop'. | Tried to change the value of a `final` variable. | `String shop = 'Campus Brew';` |
| **4** | Printed: `Total: 25.50 * 3` | The math expression was placed in a string without `${}`. | `print('Total: ${price * qty}');` |
| **5** | Printed: `Full boxes: 7.833333333333333` | Used regular division `/` instead of integer division `~/`. | `int boxes = cups ~/ 6;` |

## Part 10 test results
| Test | studentName | blackPages | colorPages | isMember | wantsBinding | Member discount | TOTAL | Minutes |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **1** | Ana Reyes | 24 | 6 | true | true | -PHP 5.25 | PHP 140.00 | 3 |
| **2** | Ben Cruz | 14 | 2 | false | false | Not eligible | PHP 51.50 | 2 |
| **3** | Carla Santos | 30 | 1 | true | false | Not eligible | PHP 83.25 | 3 |

* **Test 3 Answer:** Carla didn't get the discount because her subtotal was PHP 83.25, which is less than the PHP 100 minimum required.

## Reflection
1. **Which error message confused you the most, and how did you fix it?**  
   The type error in Bug 2 confused me a bit because I didn't realize `int` wouldn't accept decimal numbers. I fixed it by changing the variable type from `int` to `double`.
2. **Where would final be a better choice than var in your receipt? Why?**  
   `final` is better for input variables like `customerName` or `price1` because these values are set once at the start and shouldn't be accidentally changed during the calculation process.
3. **In a real Flutter app, where would the INPUT values come from instead of variables?**  
   In a real app, the inputs would come directly from user interactions on the UI, like text fields, checkboxes, and buttons.
