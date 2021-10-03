import UIKit
protocol AddressDataSource{
    var city:String{get set}
    var house_no:String{get set}
    var street:String{get set}
    func printAddress()->String
}

protocol RoomDataSource{
    var color:UIColor{get set}
    var length:Float{get set}
    var width:Float{get set}
    func floorNumber()->Int
}

class room:RoomDataSource {
    var color: UIColor
    var length: Float
    var width: Float
    var floor_no:Int
    
    init(color:UIColor,length:Float,width:Float,floor_no:Int) {
        self.color=color
        self.length=length
        self.width=width
        self.floor_no=floor_no
    }
    final func floorNumber() -> Int {
        return floor_no
    }
    private func getArea()->Int{
        return Int(self.length*self.width)
    }
    
}

final class house:AddressDataSource{
    var city: String
    var house_no: String
    var street: String
    let rooms:[room] = []
    
    init(house_no:String,street:String,city:String) {
        self.house_no=house_no
        self.street = street
        self.city=city
    }
   
    func printAddress() -> String {
        return self.house_no+" "+self.street+", "+self.city
    }
    
    
}

class neighbourhood{
    let homes:[house] = []
    init() {
        
    }
    
}

//checking weak strong

class Person{
    weak var book:Book?
    var name:String
    init(book:Book?,name:String) {
        self.book=book
        self.name=name
    }
}

class Book{
    var name:String
    weak var owner:Person?
    init(owner:Person?,name:String) {
        self.name=name
        self.owner=owner
    }
}

var man = Person(book: nil, name: "satish")
var man1 = Person(book: nil, name: "satish")

var r:String
r = "nil"
print(r)

     var book = Book(owner: nil, name: "brave")

man.book=book
book.owner=man
//book = nil

let precomposed: Character = "\u{D55C}"                  // 한
let decomposed:Character = "\u{1112}\u{1161}\u{11AB}"

var er:Book?
er = Book(owner: nil, name: "ok")




var addition:(Int,Int)->Int = { number1,number2 in
    return number1+number2
}

print(addition(1,51))

debugPrint(addition(1,59))

struct person{
    var name:String
    var age:Int
    var address:String
    var phone:Int
    
}

print(-9%2)

var p1 = Person(book: nil, name: "s")
var p2 = Person(book: nil, name: "s")
print(p1 !== p2)
