/*
  _____          _         _                  _
 |_   _|  _ _ __| |___    /_\  _ _ __ __ _ __| |___
   | || || | '_ \ / -_)  / _ \| '_/ _/ _` / _` / -_)
   |_| \_,_| .__/_\___| /_/ \_\_| \__\__,_\__,_\___|
           |_|
 */

/*
🕹 Status code
 
 Write a method called getStatusCode() that returns a hard coded tuple of type (Int, String) containing values 400 and "Not found". Unpack the tuple, and print out the returned values.

 > func getStatusCode() -> tuple {
    // create and retrn tuple here
 }
 
*/

func getStatusCode() -> (Int, String) {
    return (400, "Not found")
}

let status = getStatusCode()
print(status.0)
print(status.1)



/*
🕹 Class to tuple

 Convert the following class into a light weight tuple.
 
 class Flight {
     var airport:String
     var airplane:Int
 }

 Use the class variable names as tuple named parameters, and print out the flight details in a print statement.
 
*/

let flight: (airport: String, airplane: Int)

flight = ("LAX", 747)
