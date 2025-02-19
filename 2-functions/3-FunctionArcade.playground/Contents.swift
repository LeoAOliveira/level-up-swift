/*
  ___             _   _              _                  _
 | __|  _ _ _  __| |_(_)___ _ _     /_\  _ _ __ __ _ __| |___
 | _| || | ' \/ _|  _| / _ \ ' \   / _ \| '_/ _/ _` / _` / -_)
 |_| \_,_|_||_\__|\__|_\___/_||_| /_/ \_\_| \__\__,_\__,_\___|

 */

/*
🕹 Min

Write a function named min2 that takes two Int values, a and b, and returns the smallest one. Use _ to ignore the external parameter names for both a and b.
 
 > min(1,2)
 > 1
*/

func min2(_ a: Int, _ b: Int) -> Int {
    
    if a < b {
        return a
    } else {
        return b
    }
    
    /// Ternary operation
    // return a < b ? a : b
}

min2(1,2)


/*
🕹 Last Digit

Write a function that takes an Int and returns it’s last digit. Name the function lastDigit. Use _ to ignore the external parameter name.

 > lastDigit(12345)                     Hint: % modulus operator
 > 5
 */

func lastDigit(_ number: Int) -> Int {
    return number % 10
}

lastDigit(12345)


/*
🕹 First Numbers

Write a function named first that takes an Int named N and returns an array with the first N numbers starting from 1. Use _ to ignore the external parameter name.

 > first(3)
 > [1, 2, 3]
*/

func first(_ N: Int) -> [Int] {
    
    var numbers = [Int]()
    
    for number in 1...N {
        numbers.append(number)
    }
    
    return numbers
}

first(3)

/*
🕹 Reverse

Write a function named reverse that takes an array of integers named numbers as a parameter. The function should return an array with the numbers from numbers in reverse order.

 > reverse([1, 2, 3])
 > [3, 2, 1]
 */

func reverse(_ numbers: [Int]) -> [Int] {
    
    var reversed = [Int]()
    
    for number in numbers {
        reversed.insert(number, at: 0)
    }
    
    return reversed
}

reverse([1, 2, 3])



/*
🕹 Sum

Write a function named sum that takes an array of integers and returns their sum. Use a label variable of the word 'of' and a parameter label named numbers.

 > sum(of: [1, 2, 3])
 > 6
 */

func sum(of numbers: [Int]) -> Int {
    
    var sum: Int = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum
}

sum(of: [1, 2, 3])
