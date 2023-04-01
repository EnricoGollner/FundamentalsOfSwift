import UIKit

// Tuple:
var tp = ("Swift", 5, true)
print(tp.0)

var tpMelhor = (name: "Swift", version: 5, best: true)
print(tpMelhor.0)
print(tpMelhor.name)


// typealias

struct MovieModel {
    let title: String
    let director: String
    let countLikes: Int
}

// typealias creates a new name for an existing type.
typealias TVModel = MovieModel

let movie = MovieModel(title: "Star Wars", director: "George Lucas", countLikes: 1_000_000)

let tv = TVModel(title: "The Mandalorian", director: "A lot", countLikes: 999_000)


typealias Thing = [String: Any]
var stuff: Thing;
print(type(of: stuff))


// superclass (parent class)
class Dog {
    let name: String
    let breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
// child class:
class Poodle: Dog{
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let poodle = Poodle(name: "Luna")
print(poodle.name)
print(poodle.breed)


// Enums:

enum CompassDirections: String {
    case North = "Go straight!"
    case South = "Turn back!"
    case East = "Turn right!"
    case West = "Turn left!"
}

var compassDirection = CompassDirections.North

switch compassDirection {
case .North:
    print(compassDirection.rawValue)
case .South:
    print(compassDirection.rawValue)
default:
    print("Couldn't get raw value")
}


