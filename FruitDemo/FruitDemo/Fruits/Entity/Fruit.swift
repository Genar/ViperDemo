//
//  Fruit.swift
//
//


struct Fruit {
    
    var name: String!
    var vitamin: String!
    
    init(attributes: [String: String]) {
        
        self.name = attributes["name"]
        self.vitamin = attributes["vitamin"]
    }
}
