import Foundation

//var students: [String: Int] = [
//    "John": 20,
//  "Jane": 19,
//    "Jim": 21,
//    "Joan": 18
//]
//let youngestAge = students.values.min()
//let youngestStudent = students.filter({$0.value == youngestAge}).keys.first
//
//print("The youngest student is \(youngestStudent!) with age \(youngestAge!)")

var people = [
    ["name": "John", "age": 30],
    ["name": "Jane", "age": 25],
    ["name": "Jim", "age": 35],
    ["name": "Joan", "age": 28]
]
var j = 0
//print(people[j]["age"] as! Int > people[j+1]["age"] as! Int)
for index in 0..<people.count {
    for j in 1..<people.count {
        if people[j-1]["age"] as! Int > people[j]["age"] as! Int {
            people.swapAt(j, j-1)
        }
    }
    j=0
}
print(people)
var people_2 = people
people_2.sort(by: {
    if let age_1 = $0["age"] as? Int, let age_2 = $1["age"] as? Int{
        age_1 < age_2
    }
    return false
})
print(people_2)
//var people_2 = [
//    ["age": 30],
//    ["age": 25],
//    ["age": 35],
//    ["age": 28]
//]
//people_2.sort(by: {$1["age"]! > $0["age"]!})
//print(people_2)
////people.sort(by: {$1["age"]! > $0["age"]!})
//people_2.swapAt(0, 1)
//print(people_2)
