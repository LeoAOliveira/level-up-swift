/*
    ___       _   _               _     _                  _
   / _ \ _ __| |_(_)___ _ _  __ _| |   /_\  _ _ __ __ _ __| |___
  | (_) | '_ \  _| / _ \ ' \/ _` | |  / _ \| '_/ _/ _` / _` / -_)
   \___/| .__/\__|_\___/_||_\__,_|_| /_/ \_\_| \__\__,_\__,_\___|
        |_|

 */

/*
🕹 Unwrap with if-let

Unwrap the following Optional using the if let statement
*/

let firstname: String? = "Sam"

if let unwrappedFirstname = firstname {
    print(unwrappedFirstname)
} else {
    print("Couldn't unwrap name value")
}

/*
🕹 Unwrap with guard

Unwrap the following Optional using the guard statement
*/

enum MyError: Error {
    case invalidUsername
}

let lastname: String? = "Flynn"

guard let unwrappedLastname = lastname else {
    throw MyError.invalidUsername
}

print(unwrappedLastname)


