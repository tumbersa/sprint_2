import Foundation
struct Specie {
    let name: String
    let color: String
    let height: Double
    let weight: Double
    let isPredator: Bool
    let characteristic: String
    
    init(name: String,
         color: String,
         height: Double,
         weight: Double,
         isPredator: Bool) {
        self.name = name
        self.color = color
        self.height = height
        self.weight = weight
        self.isPredator = isPredator
        
        characteristic = name + ", " + color + ", " + "\(height)" + "\(weight)"
    }
}

var newSpecie = Specie(        name: "Новый вид",
                               color: "Белый",
                               height: 0.3,
                               weight: 2,
                               isPredator: false)
