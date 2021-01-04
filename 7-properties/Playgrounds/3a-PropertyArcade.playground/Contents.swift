/*
  ___                       _            _                  _
 | _ \_ _ ___ _ __  ___ _ _| |_ _  _    /_\  _ _ __ __ _ __| |___
 |  _/ '_/ _ \ '_ \/ -_) '_|  _| || |  / _ \| '_/ _/ _` / _` / -_)
 |_| |_| \___/ .__/\___|_|  \__|\_, | /_/ \_\_| \__\__,_\__,_\___|
             |_|                |__/

 */

 import Foundation

/*
🕹 Dog years

   Create a struct called person, with a storied property of type Int called age, and then add a computed property called ageInDogYears of type Int that returns the age of the person in dog years (age * 7).
 */

struct Person {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var leo = Person(age: 21)
leo.ageInDogYears


/*
🕹 isEquilateral

    Given the following Triangle stucture, write a computed property that determines whether the sides of the triangle are equilateral (all three sides are equal).

    var isEquilateral: Bool {
        return ?
    }

 */

struct Triangle {
    let edgeA: Int
    let edgeB: Int
    let edgeC: Int
    
    var equilateral: Bool {
        return edgeA == edgeB && edgeA == edgeC
    }
}

var triangle = Triangle(edgeA: 5, edgeB: 5, edgeC: 5)
triangle.equilateral


/*
🕹 Title in the Post

 Add a property observer stored property title that trims white space and new lines when the title stored property is set.

 > struct Post
 > var title: String
 > title.trimmingCharacters(in: .whitespacesAndNewlines)

 */

struct Post {
    
    var title: String {
        didSet {
            title.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
}

var post = Post(title: "    spaces     ")   // must be var
post.title                                  // didSet not called
post.title = "   no spaces    "             // didSet called
post.title


/*
🕹 Observe the radius

    Define a class of type Circle. Give it a stored property `radius` of type `Double`.
    And use the `didSet` property observer to ensure no negative values get assigned to radius.
    If negative number, assign radius value of 0.

 */

class Circle {
    
    var radius: Double = 0.0 {
        didSet {
            if radius < 0.0 {
                radius = oldValue
            }
        }
    }
}

let circle = Circle()
circle.radius = 10
circle.radius = -10




/*
🕹 Compute the area

 Building on the previous example, calculate the circles area as a computed property.

 Hint: area = radius * radius * Double.pi

 */

extension Circle {
    
    var area: Double {
        get {
            return radius * radius * Double.pi
        }
    }
}

let newCircle = Circle()
newCircle.radius = 5
newCircle.area



/*
🕹 Set the radius via the square root.

    Building on previous question, add a setter to the computed property area. When the area is set, have it set the stored property radius.
 */

extension Circle {
    
    var alsoArea: Double {
        get {
            return radius * radius * Double.pi
        }
        set(newArea) {
            radius = sqrt(newArea / Double.pi)
        }
    }
}

let anotherCircle = Circle()
anotherCircle.alsoArea = 25
anotherCircle.radius
