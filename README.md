# Week 7 Lab – Dart Fundamentals

Name: [ILAGAY ANG BUONG PANGALAN DITO]  
Section: [ILAGAY ANG SECTION DITO]  

## Files
- campus_brew_receipt.dart – Campus Brew order receipt (Parts 2–8)
- print_shop.dart – Campus Print Shop bill (Part 10)

## How to run
Copy a file's code into https://dartpad.dev and click Run.

## Part 7 answers
1. Nakuha ni Ana ang voucher dahil siya ay estudyante (`isStudent == true`) at ang kanyang subtotal na PHP 296.75 ay higit sa PHP 250.00 minimum limit (`subtotal >= 250`).
2. Hindi naging libre ang delivery para kay Ana dahil hindi pickup ang order niya (`isPickup == false`) at ang total niya matapos ang voucher (PHP 281.25) ay mas mababa sa PHP 300.00 minimum threshold (`afterVoucher < 300`).
3. Ginamit ang `~/` (integer division) sa halip na `/` upang makuha lamang ang buong bilang (whole points) at matanggal ang decimal values.

## Part 8 results table

| Order | Student voucher | Delivery | TOTAL | Change | Points |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **A — Ana** | -PHP 15.50 | PHP 29.50 | PHP 310.75 | PHP 89.25 | 6 |
| **A with isStudent = false** | Not eligible | PHP 29.50 | PHP 326.25 | PHP 73.75 | 6 |
| **B — Ben** | Not eligible | FREE | PHP 295.75 | PHP 4.25 | 5 |
| **C — Carla** | -PHP 15.50 | FREE | PHP 301.50 | PHP 198.50 | 6 |

5. Libre ang delivery ni Carla dahil ang total niya pagkatapos ng voucher discount (PHP 301.50) ay umabot sa PHP 300.00 minimum limit para sa free delivery.

## Part 9 debugging table

| Bug | What DartPad said (or printed) | What was wrong | Your fixed line |
| :---: | :--- | :--- | :--- |
| **1** | Error: Expected ';' after this. | Missing semicolon `;` at the end of statement. | `String drink = 'Iced Coffee';` |
| **2** | A value of type 'double' can't be assigned to a variable of type 'int'. | Assigned a decimal number (`65.25`) to an integer variable. | `double price = 65.25;` |
| **3** | Can't assign to the final variable 'shop'. | Attempted to reassign a new value to a `final` variable. | `String shop = 'Campus Brew';` |
| **4** | Printed: `Total: 25.50 * 3` | Arithmetic expression was inside a string without `${}`. | `print('Total: ${price * qty}');` |
| **5** | Printed: `Full boxes: 7.833333333333333` | Used standard division `/` instead of integer division `~/`. | `int boxes = cups ~/ 6;` |

## Part 10 test results

| Test | studentName | blackPages | colorPages | isMember | wantsBinding | Member discount | TOTAL | Minutes |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **1** | Ana Reyes | 24 | 6 | true | true | -PHP 5.25 | PHP 140.00 | 3 |
| **2** | Ben Cruz | 14 | 2 | false | false | Not eligible | PHP 51.50 | 2 |
| **3** | Carla Santos | 30 | 1 | true | false | Not eligible | PHP 83.25 | 3 |

* **Test 3 Answer:** Hindi nakakuha ng discount si Carla dahil ang kanyang subtotal na PHP 83.25 ay mas mababa sa kinakailangang PHP 100.00 minimum limit para sa member discount.

## Reflection
1. **Which error message confused you the most, and how did you fix it?**  
   Ang error message sa Bug 2 hinggil sa type assignment (`double` to `int`) ang medyo nakakapanibago dahil sa pormal na pag-check ng Dart sa data types. Naayos ito sa pamamagitan ng pagpapalit ng type declaration mula `int` patungong `double`.
2. **Where would final be a better choice than var in your receipt? Why?**  
   Mas magandang gamitin ang `final` para sa mga input values gaya ng `customerName`, `price1`, at `qty1` dahil ang mga ito ay dapat na fixed o hindi na nababago kapag na-compute na ang order receipt.
3. **In a real Flutter app, where would the INPUT values come from instead of variables?**  
   Sa totoong Flutter app, ang mga input values ay manggagaling sa mga UI widgets gaya ng `TextField` (input ng pangalan o dami), `Checkbox` (para sa student o membership status), at mga interactive buttons.
