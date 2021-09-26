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

     var book = Book(owner: nil, name: "brave")

man.book=book
book.owner=man
//book = nil

// closures


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
