import Foundation

func researchGalaxy (shipName: String, galaxyName: String, systemsWithPlanets: [(String,[String])]) -> [String]{
    var foundSpeciesInGalaxy: [String] = []
    print("⬇️ 🌌 Приступаем к изучению галактики \(galaxyName)")
    print("ℹ️ Предстоит изучить \(systemsWithPlanets.count) систем\n")
    for (systemName,systemPlanets) in systemsWithPlanets {
        let foundSpeciesinSystem = researchSystem(
            shipName: shipName,
            systemName: systemName,
            systemPlanets: systemPlanets)
        foundSpeciesInGalaxy.append(contentsOf: foundSpeciesinSystem)
        print("ℹ️ В системе \(systemName) найдено \(foundSpeciesinSystem.count) форм жизни\n")
    }
    print("⏹ 🌌 Исследование галактики \(galaxyName) завершено")
    return foundSpeciesInGalaxy
}


func researchSystem (shipName: String,systemName:String,systemPlanets: [String]) -> [String] {
    print("⬇️ 🌞 Судно \(shipName) прибыло в систему \(systemName)")
    print("ℹ️ Предстоит изучить \(systemPlanets.count) планет\n")
    var foundSpeciesInSystem: [String] = []
    for planetName in systemPlanets {
        let foundSpeciesOnPlanet = researchPlanet(shipName: shipName, planetName: planetName)
        foundSpeciesInSystem.append(contentsOf: foundSpeciesOnPlanet)
        print("ℹ️ На планете \(planetName) найдено \(foundSpeciesOnPlanet.count) форм жизни\n")
    }
    print("⏹ 🌞 Судно \(shipName) покидает систему \(systemName)")
    return foundSpeciesInSystem
}


func researchPlanet(shipName: String, planetName: String) ->[String] {
    print("⬇️ 🌎 Судно \(shipName) приступило к исследованию планеты \(planetName)")
    var foundSpecies: [String] = []
    if planetName == "Земля" {
        foundSpecies.append(contentsOf: ["Папич топ10к","0iq чел"])
    }
    print("⏹ 🌎 Судно \(shipName) покидает планету \(planetName)")
    return foundSpecies
}


let shipName: String = "Тысячелетний сокол"

let galaxyName: String = "Млечный путь"

let systemsWithPlanets: [(String, [String])] = [
    ("Арканис", ["Татуин"]),
    ("Солнечная система", ["Меркурий", "Венера", "Земля", "Марс"])
]

let foundSpeciesInGalaxy = researchGalaxy(
    shipName: shipName,
    galaxyName: galaxyName,
    systemsWithPlanets: systemsWithPlanets
)

print("ℹ️ Найдено \(foundSpeciesInGalaxy.count) форм жизни")
for speciesName in foundSpeciesInGalaxy {
    print (speciesName)
}
