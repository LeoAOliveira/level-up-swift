/*
   ___         _               _     _                  _
  | _ \_ _ ___| |_ ___  __ ___| |   /_\  _ _ __ __ _ __| |___
  |  _/ '_/ _ \  _/ _ \/ _/ _ \ |  / _ \| '_/ _/ _` / _` / -_)
  |_| |_| \___/\__\___/\__\___/_| /_/ \_\_| \__\__,_\__,_\___|
 
 */

/*
 🕹 Movable Player.
 */

// Given

struct Point {
    let x: Int
    let y: Int
    
    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

struct Player {
    var position = Point(0, 0)
}

// 1. Define an enum called 'Direction' that allows a player to move left, right up and down.

enum Direction {
    case left
    case right
    case up
    case down
}

// 2. Create a protocol called 'Moveable' with two methods:
//    - func move(_ direction: Direction)
//    - func coordinates() -> String

protocol Moveable {
    mutating func move(_ direction: Direction)
    func coordinates() -> String
}

// 3. Make 'Player' conform to 'Moveable' protocol via a protocol extension
//    - extension Player: Moveable {}
//
//    - make the 'move' function update the players current position by assigning it a new 'Point' based on the direction passed in.
//    - make the 'coordinates' function return a string of the form (x, y).


extension Player: Moveable {
    
    mutating func move(_ direction: Direction) {
        
        var x: Int = position.x
        var y: Int = position.y
        
        switch direction {
        case .left:
            x -= 1
        case .right:
            x += 1
        case .up:
            y += 1
        case .down:
            y -= 1
        }
        
        position = Point(x, y)
    }
    
    func coordinates() -> String {
        return "(\(position.x), \(position.y))"
    }
}

var player1 = Player()
player1.coordinates()

player1.move(.left)
player1.coordinates()

player1.move(.right)
player1.coordinates()

player1.move(.up)
player1.move(.up)
player1.coordinates()

player1.move(.down)
player1.coordinates()
