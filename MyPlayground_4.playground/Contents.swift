import Foundation

struct Person {
    var name: String
    var age: Int
    lazy var fullName = "\(name) \(age)"
    lazy var fullName2: String = {
        return "\(name) \(self.age)"
    }()
    //computed properties
    var fullName3:String {
        get {
            "\(name) \(age)"
        }
        set{
            let words:[String] = newValue.components(separatedBy: " ")
            name = words[0]
            age = Int(words[1]) ?? 0
        }
    }
    //property observers
    var fullName4:String {
        willSet{
            print("Will set fullName4 to \(newValue)")
        }
    }
    var fullName5:String{
        didSet{
            print("Did set fullName5 from \(oldValue) to \(fullName5)")
        }
    }
}

var person = Person(name:"Collapse",age: 22, fullName4: "gg 2",fullName5: "Lol")
print(person.fullName3)
person.fullName3="GG 23"
print(person.fullName3)
person.fullName4 = "fuck"
person.fullName5 = "omg"
struct Circle {
    var radius: Double
    //read-only properties
    var area: Double {
        Double.pi * pow(radius, 2)
    }
    //Type Properties
    static var count = 0
    init(radius: Double) {
        self.radius = radius
        Circle.count += 1
    }
}

var circle = Circle(radius: 3)
var circle_2 = Circle(radius: 5)
print(Circle.count)
