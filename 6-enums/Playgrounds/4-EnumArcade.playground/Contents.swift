/*
  ___                    _                  _
 | __|_ _ _  _ _ __     /_\  _ _ __ __ _ __| |___
 | _|| ' \ || | '  \   / _ \| '_/ _/ _` / _` / -_)
 |___|_||_\_,_|_|_|_| /_/ \_\_| \__\__,_\__,_\___|

 */

/*
🕹 Grid Warrior
 
 You are a game designer in which your character is exploring a grid like map. You get the original location of the character and the steps he/she will take.
 
 Write the code, that will:
  - increment y + 1 if up
  - decrement y - 1 if down
  - increment x + 1 if right
  - decrement x - 1 if left
 
 Print the final location after all the steps have been taken
 
*/

enum Direction {
    case up
    case down
    case left
    case right
}

var location = (x: 0, y: 0)

var steps: [Direction] = [.up, .up, .left, .down, .left]

for step in steps {
    switch step {
    case .up:
        location.y += 1
    case .down:
        location.y -= 1
    case .right:
        location.x += 1
    case .left:
        location.x -= 1
    }
}

print(location)


/*
🕹 Rock, Paper, Scissors

 1) Define an enumeration named HandShape with three members: .rock, .paper, .scissors.
 2) Define an enumeration named MatchResult with three members: .win, .draw, .lose.
 3) Write a function called match that takes two hand shapes and returns a match result. It should return the outcome for the first player (the one with the first hand shape).
 */

enum HandShape {
    case rock
    case paper
    case scissors
}

enum MatchResult {
    case win
    case draw
    case lose
}

func match(_ player1: HandShape, _ player2: HandShape) -> MatchResult {
    
    if (player1 == .rock && player2 == .scissors) || 
        (player1 == .paper && player2 == .rock) || 
        (player1 == .scissors && player2 == .paper) {
        return .win
    
    } else if player1 == player2 {
        return .draw
    
    } else {
        return .lose
    }
}

match(.paper, .rock)
match(.paper, .scissors)
match(.paper, .paper)

