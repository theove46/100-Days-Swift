import UIKit

let driving = {
    print("I'm driving in my car")
}
driving()

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving2("London")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

let driving3 = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving3)

func travel2(action: () -> Void) {
    print("I'm getting ready to go 2.")
    action()
    print("I arrived! 2")
}
travel2() {
    print("I'm driving in my car 2")
}
travel2 {
    print("I'm driving in my car 3")
}
