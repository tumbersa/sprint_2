import Foundation


//func longestString(_ strings: [String]) -> Int {
//guard let longest = strings.max(by: { $1.count > $0.count }) else { return 0 }
//return longest.count
//}

var catalog = [String] ()
catalog.append("Дерьмодемон")
catalog.append("Тюбик")

enum FlyingSpecie {
    case bird
    case insect
    case sphinx
    case utirok
    func displayText()-> String{
        switch self {
        case .bird:
            return "Птичку жалко"
        case .insect:
            return "Умри, насекомое"
        case .sphinx,.utirok:
            return "Кто это?"
        }
    }
    var displatText_2: String {
        switch self {
        case .bird:
            return "Птичку жалко"
        case .insect:
            return "Умри, насекомое"
        case .sphinx,.utirok:
            return "Dog"
        }
    }
}

var catalog_2: [FlyingSpecie] = []
let specie =  FlyingSpecie.bird
let specie_2: FlyingSpecie = .insect

print(specie.displayText())
print(specie_2.displatText_2)

catalog_2.append(contentsOf: [specie,specie_2])

