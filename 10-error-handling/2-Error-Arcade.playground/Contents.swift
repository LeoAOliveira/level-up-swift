/*
  ___                     _                  _
 | __|_ _ _ _ ___ _ _    /_\  _ _ __ __ _ __| |___
 | _|| '_| '_/ _ \ '_|  / _ \| '_/ _/ _` / _` / -_)
 |___|_| |_| \___/_|   /_/ \_\_| \__\__,_\__,_\___|

 */

import Foundation

/*
🕹 Bad Bill - Error.

 Create an error called `BillError` and give it a single case called `negativeAmount`.

 */

enum BillError: Error {
    case negativeAmount
}


/*
🕹 Bad Bill - throws.

 Write a method called payBill that takes an Double amount, and throws an `negativeAmount` error if the bill is a negative amount.
 If the bill is not negative simply print out the amount.
 Then call the method x3 ways - try, try?, try!.

 */

func payBill(_ amount: Double) throws {
    
    if amount < 0.0 {
        throw BillError.negativeAmount
    }
    
    print("Bill payed: $\(amount)")
}

do {
    try payBill(-10)
} catch {
    print("Error paying bill")
}

try? payBill(-20)

// try! payBill(-30)


/*
🕹 Bad Bill - programmer error

 Take the payBill you just created, and re-write it to genereate a programmer error (assert() or preCondition())
 instead of throwing an error.

 Discussion: What are the differences between these two techniques? Which do you prefer? Why?

 */

func alsoPayBill(_ amount: Double) {
    
    assert(amount > 0.0, "Amount can't be negative!")
    
    print("Bill payed: $\(amount)")
}

alsoPayBill(-10)
