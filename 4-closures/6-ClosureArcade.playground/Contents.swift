
/*
     ___ _                         _                  _
    / __| |___ ____  _ _ _ ___    /_\  _ _ __ __ _ __| |___
   | (__| / _ (_-< || | '_/ -_)  / _ \| '_/ _/ _` / _` / -_)
    \___|_\___/__/\_,_|_| \___| /_/ \_\_| \__\__,_\__,_\___|
 
*/

/*
🕹 K times

Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.

> applyKTimes(K: 3, closure: { print("I heart Swift") })

*/

func applyKTimes(K: Int, closure: () -> Void) {
    for _ in 1...K {
        closure()
    }
}

/// Inline call
applyKTimes(K: 3, closure: { print("I heart Swift") })

/// Multiple line call
applyKTimes(K: 2) { 
    print("Hello there!")
}


/*

🕹 Div3

Use filter to create an array called multiples that contains all the multiples of 3 from a given array.

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]

> let multiples = numbers.filter { ? }                     // Hint: Modulus Operator

// [3, 6, 9, 3, 12]

*/

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]

let multiples = numbers.filter { $0 % 3 == 0 }  

print(multiples)


/*
🕹 Max

Find the largest number from numbers and then print it. Use reduce to solve this exercise.

*/

let otherNumbers = [4, 7, 1, 9, 6, 5, 6, 9]

let max = otherNumbers.reduce(otherNumbers[0]) { x, y in
    if x > y {
        return x
    } else {
        return y
    }
}

print(max)


/*

🕹 Join

Join all the strings from strings into one using reduce. Add spaces in between strings. Print your result.

> var strings = ["We", "Heart", "Swift"]
> "We Heart Swift"

*/

var strings = ["We", "Heart", "Swift"]

let combineString = strings.reduce("") {
    if $0 == "" {
        return $1
    } else {
        return "\($0) \($1)"    
    }
}

print(combineString)


/*

🕹 Chains

Find the sum of the squares of all the odd numbers from numbers and then print it. Use map, filter and reduce to solve this problem.

> var numbers = [1, 2, 3, 4, 5, 6]
> 35 // 1 + 9 + 25 -> 35

*/

var chainsNumbers = [1, 2, 3, 4, 5, 6]

let oddNumbers = chainsNumbers.filter({ $0 % 2 == 1 })
print(oddNumbers)

let squaresNumbers = oddNumbers.map({ $0 * $0 })
print(squaresNumbers)

let sumNumbers = squaresNumbers.reduce(0, +)
print(sumNumbers)


/*

🕹 For each

Implement a function forEach(array: [Int], _ closure: Int -> ()) that takes an array of integers and a closure and runs the closure for each element of the array.

var array = [1,2,3,4]
forEach(array) {
    print($0 + 1)
}
// This will be printed:
// 2
// 3
// 4
// 5

*/

func forEach(_ array: [Int], _ closure: (Int) -> ()) {
    
    for number in array {
        closure(number)
    }
    
    // array.map { closure($0) }
}

var array = [1, 2, 3, 4]

forEach(array) {
    print($0 + 1)
}


/*
🕹 Bonus: Combine arrays

Implement a function combineArrays that takes 2 arrays and a closure that combines 2 Ints into a single Int. The function combines the two arrays into a single array using the provided closure. Assume that the 2 arrays have equal length.

> var array1 = [1,2,3,4]
> var array2 = [5,5,5,3]

combineArrays(array1,array2) {
    $0 * $1
}

> [5,10,15,12]
 
*/

func combineArrays(_ a1: [Int], _ a2: [Int], closure: (Int, Int) -> Int) -> [Int] {
    
    var result: [Int] = []
    
    for i in 0..<a1.count {
        result.append(closure(a1[i],a2[i]))
    }
    
    return result
}

var array1 = [1,2,3,4]
var array2 = [5,5,5,3]


let resultArray = combineArrays(array1, array2) {
    $0 * $1
}

print(resultArray)
