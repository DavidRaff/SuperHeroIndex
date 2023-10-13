//
//  SuperheroModel.swift
//  SuperHeroAPI
//
//  Created by David Laczkovits on 10.10.23.
//

import Foundation

class SuperheroModel : Codable, Identifiable {
    let id : Int
    let name : String
    let slug : String
    var powerstats : Powerstats
    var appearance : Appearance
    var biography : Biography
    var work : Work
    var connections : Connections
    var images : ImageStruct
}
    
struct Powerstats : Codable {
        let intelligence : Int
        let strength : Int
        let speed : Int
        let durability : Int
        let power : Int
        let combat : Int
}

    struct Biography : Codable {
        let fullName : String
        let alterEgos : String
        let aliases : [String]
        let placeOfBirth : String
        let firstAppearance : String
        let publisher : String?
        let alignment : String
    }
    
    struct Appearance : Codable {
        let gender : String
        let race : String?
        let height : [String]
        let weight : [String]
        let eyeColor : String
        let hairColor : String
    }

struct Work : Codable {
    let occupation : String
    let base : String
}
    
struct Connections : Codable {
        let groupAffiliation : String
        let relatives : String
    }
    
    struct ImageStruct : Codable {
        let xs : String
        let sm : String
        let md : String
        let lg : String
    }

