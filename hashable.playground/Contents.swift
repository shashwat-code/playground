// EQUATABLE
import UIKit

struct Person:Equatable{
    var name:String
    
}

struct Car:Equatable{
    static func == (lhs: Car, rhs: Car) -> Bool {
        return lhs.make==rhs.make && lhs.owner.name==rhs.owner.name
    }
    
    var make:String
    var model:String
    var owner :Person
    
}
print("okkish")
var per1 = Person(name: "er")
var car1 = Car(make: "23", model: "24", owner: per1)
var per2 = Person(name: "er")
var car2 = Car(make: "23", model: "24", owner: per2)
print(car1==car2)
var favoriteGenres: Set<String> = ["shashwat","chauhan","singh"]
favoriteGenres.sorted()

var arr = [Int]()
print(arr.count)

